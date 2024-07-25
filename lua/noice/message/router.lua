local require = require("noice.util.lazy")

local Config = require("noice.config")
local Manager = require("noice.message.manager")
local Util = require("noice.util")
local View = require("noice.view")

---@class NoiceRoute
---@field view NoiceView
---@field filter NoiceFilter
---@field opts? NoiceRouteOptions|NoiceViewOptions

---@class NoiceRouteOptions
---@field stop boolean
---@field skip boolean

---@class NoiceRouteConfig
---@field view string
---@field filter NoiceFilter
---@field opts? NoiceRouteOptions|NoiceViewOptions

local M = {}
---@type NoiceRoute[]
M._routes = {}
M._tick = 0
M._need_redraw = false
---@type fun()|Interval?
M._updater = nil
M._updating = false

function M.enable()
  if not M._updater then
    M._updater = Util.interval(Config.options.throttle, Util.protect(M.update))
  end
  M._updater()
end

function M.disable()
  if M._updater then
    M._updater.stop()
    M._updater = nil
    Manager.clear()
    M.update()
  end
  vim.api.nvim_create_augroup("NoiceRouter", { clear = true })
end

---@param route NoiceRouteConfig
---@param pos? number
function M.add(route, pos)
  local ret = {
    filter = route.filter,
    opts = route.opts or {},
    view = route.view and View.get_view(route.view, route.opts) or nil,
  }
  if ret.view == nil then
    ret.opts.skip = true
  end
  if pos then
    table.insert(M._routes, pos, ret)
  else
    table.insert(M._routes, ret)
  end
  return ret
end

-- Redirect any messages generated by a command or function
---@param cmd string|fun() command or function to execute
---@param routes? NoiceRouteConfig[] custom routes. Defaults to `config.redirect`
function M.redirect(cmd, routes)
  routes = routes or { Config.options.redirect }
  if type(cmd) == "string" then
    local cmd_str = cmd
    cmd = function()
      vim.cmd(cmd_str)
    end
  end
  -- process any pending messages
  M.update()

  local added = {}
  local pos = 1
  -- add temporary routes
  for _, route in ipairs(routes) do
    table.insert(added, M.add(route, pos))
    pos = pos + 1
  end

  -- execute callback
  Util.try(cmd)

  -- force a redraw to make sure we received all msg_show events
  vim.cmd.redraw()

  -- process messages
  M.update()

  -- remove temporary routes
  M._routes = vim.tbl_filter(function(r)
    return not vim.tbl_contains(added, r)
  end, M._routes)
end

function M.setup()
  for _, route in ipairs(Config.options.routes) do
    M.add(route)
  end
end

function M.view_stats()
  local views = M.get_views()
  ---@type table<string,number>
  local ret = {}

  -- remove deleted messages and new messages from the views
  for view, _ in pairs(views) do
    if #view._messages > 0 then
      if not ret[view._opts.view] then
        ret[view._opts.view] = 0
      end
      ret[view._opts.view] = ret[view._opts.view] + #view._messages
    end
  end
  return ret
end

function M.get_views()
  ---@type table<NoiceView, boolean>
  local views = {}
  for _, route in ipairs(M._routes) do
    if route.view then
      views[route.view] = true
    end
  end
  return views
end

function M.dismiss()
  Manager.clear()
  local views = M.get_views()
  for view, _ in pairs(views) do
    view:dismiss()
    view:display()
  end
  M.update()
end

function M.update()
  if Util.is_exiting() then
    return
  end

  if M._updating then
    return
  end

  -- only update on changes
  if M._tick == Manager.tick() then
    return
  end

  M._updating = true

  Util.stats.track("router.update")

  ---@type table<NoiceView,boolean>
  local updates = {}

  local messages = Manager.get(nil, { sort = true })
  local views = M.get_views()

  -- remove deleted messages and new messages from the views
  for view, _ in pairs(views) do
    local count = #view._messages
    view._messages = Manager.get({
      -- remove any deleted messages
      has = true,
      -- remove messages that we are adding
      ["not"] = {
        message = messages,
      },
    }, { messages = view._messages })

    -- retry errors only once
    if view._errors > 1 then
      view._errors = 0
    end

    if #view._messages ~= count or view._errors > 0 then
      updates[view] = true
    end
  end

  -- add messages
  for _, message in ipairs(messages) do
    for _, route in ipairs(M._routes) do
      if message:is(route.filter) then
        if not route.opts.skip then
          route.view:push(message)
          route.view._route_opts = vim.tbl_deep_extend("force", route.view._route_opts or {}, route.opts or {})
          updates[route.view] = true
        end
        if route.opts.stop ~= false then
          break
        end
      end
    end
  end

  Manager.clear()

  local dirty = false
  for view, _ in pairs(updates) do
    view:display()
    if view._errors > 0 then
      dirty = true
    end
  end

  if not dirty then
    M._tick = Manager.tick()
  end

  if not vim.tbl_isempty(updates) then
    Util.stats.track("router.update.updated")
    M._need_redraw = true
  end

  M._updating = false
end

function M.echo_pending()
  local messages = Manager.get({ event = "msg_show" }, { sort = true })
  local chunks = {}
  for _, message in ipairs(messages) do
    for _, line in ipairs(message._lines) do
      ---@param t NuiText
      local chunk = vim.tbl_map(function(t)
        return { t:content(), t.extmark.hl_group }
      end, line._texts)
      vim.list_extend(chunks, chunk)
    end
  end
  chunks[#chunks + 1] = { "foobar", "Normal" }
  -- vim.opt.cmdheight = 10
  -- vim.opt.more = false
  vim.api.nvim_echo(chunks, true, {})
end

return M
