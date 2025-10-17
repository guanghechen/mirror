local Util = require("sidekick.util")

---@class sidekick.cli.Scrollback
---@field terminal {value?:sidekick.cli.Terminal}|fun():sidekick.cli.Terminal?
---@field buf? number
---@field closing? boolean
local M = {}
M.__index = M

---@type table<string, sidekick.cli.Scrollback?>
M.scrollbacks = setmetatable({}, {
  __mode = "v", -- weak values
})

local MOUSE_SCROLL_UP = vim.keycode("<ScrollWheelUp>")
local MOUSE_SCROLL_DOWN = vim.keycode("<ScrollWheelDown>")
local MOUSE_CLICK = vim.keycode("<LeftMouse>")

-- track mouse scrolling
vim.on_key(function(key, typed)
  key = typed or key
  if key ~= MOUSE_SCROLL_UP and key ~= MOUSE_SCROLL_DOWN and key ~= MOUSE_CLICK then
    return
  end
  if vim.fn.mode() ~= "t" then
    return
  end
  local info = vim.fn.getmousepos()
  local session_id = vim.w[info.winid].sidekick_session_id
  local sb = session_id and M.scrollbacks[session_id]
  if sb then
    sb:update({ open = true, win_pos = key == MOUSE_CLICK and { info.screenrow, info.screencol } or nil })
  end
end)

---@param terminal sidekick.cli.Terminal
function M.new(terminal)
  local self = setmetatable({}, M)
  self.terminal = Util.ref(terminal)

  local update = function()
    self:update()
  end

  vim.api.nvim_create_autocmd({ "TermEnter" }, {
    group = terminal.group,
    callback = update,
  })

  vim.api.nvim_create_autocmd({ "TermLeave" }, {
    group = terminal.group,
    callback = vim.schedule_wrap(update),
  })

  vim.api.nvim_create_autocmd({ "WinEnter" }, {
    group = terminal.group,
    callback = function()
      vim.defer_fn(function()
        self:update()
      end, 50)
    end,
  })

  M.scrollbacks[terminal.id] = self
  return self
end

-- Check if the scrollback buffer is open in the terminal window
function M:is_open()
  local terminal = self.terminal()
  return terminal
    and terminal:is_open()
    and self.buf
    and vim.api.nvim_buf_is_valid(self.buf)
    and vim.api.nvim_win_get_buf(terminal.win) == self.buf
end

function M:is_focused()
  local terminal = self.terminal()
  return terminal and terminal:is_focused()
end

---@param win_pos? sidekick.Pos
function M:open(win_pos)
  local terminal = self.terminal()
  if not terminal then
    return
  end
  local text = terminal.parent and terminal.parent:dump() or nil
  if not text then
    return self:scroll(win_pos)
  end

  -- proper scrollback support
  text = text:gsub("\n$", "")
  self.buf = vim.api.nvim_create_buf(false, true)
  terminal:bo(self.buf)
  vim.bo[self.buf].bufhidden = "wipe"
  vim.api.nvim_win_set_buf(terminal.win, self.buf)

  -- work-around for defaults from |terminal-config|
  vim.api.nvim_create_autocmd("TermOpen", {
    once = true,
    callback = function()
      terminal:wo({ cursorline = true })
    end,
  })

  terminal:wo({ cursorline = true })
  local term = vim.api.nvim_open_term(self.buf, {})
  terminal:keys(self.buf)

  vim.api.nvim_chan_send(term, text)

  -- HACK: this forces a refresh of the terminal buffer and prevents flickering
  vim.bo[self.buf].scrollback = 9999
  vim.bo[self.buf].scrollback = 9998

  self:scroll(win_pos)
end

function M:close()
  local terminal = self.terminal()
  if not terminal then
    return
  end
  if vim.fn.mode() == "t" then
    -- switch to normal mode first
    vim.cmd.stopinsert()
  end
  if terminal:buf_valid() and terminal:win_valid() then
    vim.api.nvim_win_set_buf(terminal.win, terminal.buf)
    terminal:wo()
  end
end

---@param opts? { open?:boolean, win_pos?:sidekick.Pos, reason?:string }
function M:update(opts)
  opts = opts or {}

  local terminal = self.terminal()
  if not (terminal and terminal:is_open()) then
    return
  end

  local mode = vim.fn.mode()
  local is_open = self:is_open()
  local is_focused = self:is_focused()

  if is_open then
    if mode == "t" and is_focused then
      -- terminal mode in the scrollback buffer: close it
      self.closing = true -- prevent TermLeave from reopening
      vim.cmd.stopinsert()
      vim.schedule(function()
        self:close()
        vim.cmd.startinsert()
        vim.schedule(function()
          self.closing = false
        end)
      end)
    end
  elseif not self.closing then
    if mode ~= "t" and is_focused then
      -- normal mode in the terminal buffer: open the scrollback
      self:open(opts.win_pos)
    elseif opts.open then
      -- explicitly requested to open the scrollback (mouse events)
      self:open(opts.win_pos)
    end
  end
end

---@param win_pos? sidekick.Pos
function M:scroll(win_pos)
  local terminal = self.terminal()
  -- NOTE: Not sure why, but on mouse click, we don't need to do anything at all.
  -- It just works surprisingly. Probably because we quickly swap to
  -- the scrollback buffer before the mouse event is fully processed.
  if win_pos or not terminal then
    return
  end
  local buf = self.buf or terminal.buf
  if not (buf and vim.api.nvim_buf_is_valid(buf) and terminal:win_valid()) then
    return
  end
  local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
  local lnum = #lines
  local col = 0
  while lnum > 1 and not lines[lnum]:find("%S") do
    lnum = lnum - 1
  end
  local height = vim.api.nvim_win_get_height(terminal.win)
  local topline = math.max(1, #lines - height + 1) -- scroll to bottom
  lnum = math.min(math.max(topline, lnum), topline + height - 1)
  col = math.min(math.max(0, col), #lines[lnum] + 1)
  vim.api.nvim_win_call(terminal.win, function()
    vim.fn.winrestview({
      topline = topline,
      lnum = lnum, -- cursor to last non-blank line
      col = col, -- cursor to first column
    })
  end)
end

return M
