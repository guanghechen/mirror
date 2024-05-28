local util_path = require('spectre.util.path')

---@diagnostic disable: param-type-mismatch
local Job = require('plenary.job')
local log = require('spectre._log')
local MAX_LINE_CHARS = 255
local utils = require('spectre.utils')
local base = {}
base.__index = base

function base.get_path_args(self, path)
  print('[spectre] should implement path_args for ', self.state.cmd)
  return { path }
end

function base.on_output(self, output_text)
  pcall(vim.schedule_wrap(function()
    if output_text == nil then
      return
    end
    -- it make vim broken with  (min.js) file has a long line
    if string.len(output_text) > MAX_LINE_CHARS then
      output_text = string.sub(output_text, 0, MAX_LINE_CHARS)
    end
    local t = utils.parse_line_grep(output_text)
    if t == nil or t.lnum == nil or t.col == nil then
      return
    end
    self.handler.on_result(t)
  end))
end

function base.on_error(self, output_text)
  if output_text ~= nil then
    log.debug('search error ' .. output_text)
    pcall(vim.schedule_wrap(function()
      self.handler.on_error(output_text)
    end))
  end
end

function base.on_exit(self, value)
  pcall(vim.schedule_wrap(function()
    self.handler.on_finish(value)
  end))
end

function base.search(self, query)
  local args = vim.iter({ self.state.args }):flatten():totable()
  if query.path then
    local args_paths = util_path.parse_paths(query.path) ---@type string[]
    local args_path = self:get_path_args(args_paths)
    table.insert(args, args_path)
  end

  if self.state.options_value then
    table.insert(args, self.state.options_value)
  end

  -- no more args
  table.insert(args, '--')
  args = vim.iter(args):flatten():totable()

  if query.cwd == '' then
    query.cwd = nil
  end
  table.insert(args, query.search_text)
  if query.search_paths then
    for _, dir in ipairs(query.search_paths) do
      table.insert(args, dir)
    end
  else
    -- https://github.com/nvim-telescope/telescope.nvim/issues/907
    -- ripgrep issue
    table.insert(args, '.')
  end

  log.debug('search cwd ' .. (query.cwd or ''))
  log.debug('search: ' .. self.state.cmd .. ' ' .. table.concat(args, ' '))

  vim.notify('search:' .. vim.inspect({ cmd = self.state.cmd, args = args }))

  self.handler.on_start()
  self.job = Job:new({
    enable_recording = true,
    command = self.state.cmd,
    cwd = query.cwd,
    args = args,
    on_stdout = function(_, value)
      self:on_output(value)
    end,
    on_stderr = function(_, value)
      self:on_error(value)
    end,
    on_exit = function(_, value)
      self:on_exit(value)
    end,
  })

  self.job:start()
end

function base.stop(self)
  if self.job ~= nil and self.job.is_shutdown == nil then
    log.debug('base search stop')
    self.job:shutdown()
  end
  self.job = nil
end

local function extend(child)
  local creator = {}
  creator.__index = creator
  function creator:new(config, handler)
    assert(config ~= nil, 'search config not nil')
    handler = vim.tbl_extend('force', {
      on_start = function() end,
      on_result = function() end,
      on_error = function() end,
      on_finish = function() end,
    }, handler or {})
    local engine_state = child:init(config)
    local search = {
      state = engine_state,
      handler = handler,
    }
    local meta = {}
    -- if child already have function then it will call child function
    meta.__index = vim.tbl_extend('force', base, child)
    return setmetatable(search, meta)
  end

  return creator
end

return { extend = extend }
