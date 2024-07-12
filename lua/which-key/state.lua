local Buf = require("which-key.buf")
local Config = require("which-key.config")
local Tree = require("which-key.tree")
local Util = require("which-key.util")

local M = {}

---@class wk.State
---@field mode wk.Mode
---@field node wk.Node
---@field filter wk.Filter

---@type wk.State?
M.state = nil

function M.setup()
  local group = vim.api.nvim_create_augroup("wk", { clear = true })

  vim.api.nvim_create_autocmd({ "RecordingEnter", "RecordingLeave" }, {
    group = group,
    callback = function(ev)
      if ev.event == "RecordingEnter" then
        Buf.clear({ buf = ev.buf })
        M.stop()
      else
        Buf.check()
      end
    end,
  })

  vim.api.nvim_create_autocmd("FocusLost", {
    group = group,
    callback = function()
      if M.state then
        -- FIXME: add proper abort functionality
        vim.api.nvim_input("<esc>")
      end
    end,
  })

  vim.api.nvim_create_autocmd("ModeChanged", {
    group = group,
    callback = function(ev)
      if not Util.safe() then
        M.stop()
      -- make sure the buffer mode exists
      elseif Buf.get() and Util.xo() then
        if not M.state then
          M.start()
        end
      elseif not ev.match:find("c") then
        M.stop()
      end
    end,
  })

  vim.api.nvim_create_autocmd({ "LspAttach", "LspDetach" }, {
    group = group,
    callback = function(ev)
      Buf.clear({ buf = ev.buf })
    end,
  })

  vim.api.nvim_create_autocmd({ "BufReadPost", "BufEnter" }, {
    group = group,
    callback = function()
      Buf.check()
    end,
  })

  Buf.check()
end

function M.stop()
  M.state = nil
  vim.schedule(function()
    if not M.state then
      require("which-key.view").hide()
    end
  end)
end

---@param state wk.State
---@return wk.Node?
function M.step(state)
  local View = require("which-key.view")
  vim.cmd.redraw()
  local ok, char = pcall(vim.fn.getcharstr)
  if not ok then
    return
  end
  local key = vim.fn.keytrans(char)
  local node = (state.node.children or {})[key] ---@type wk.Node?

  local mode = state.mode.mode
  local xo = mode:find("[xo]") ~= nil

  if node then
    -- NOTE: a node can be both a keymap and a group
    -- We always prefer the group and only use the keymap if it is nowait

    local is_group = Tree.is_group(node)
    local is_nowait = node.keymap and node.keymap.nowait == 1
    local is_action = node.action ~= nil
    local is_keymap = node.keymap ~= nil
    if is_group and not is_nowait and not is_action then
      return node
    end
  elseif key == "<Esc>" then
    -- cancel and exit if in op-mode
    return mode == "o" and Util.exit() or nil
  elseif key == "<BS>" then
    return state.node.parent or state.mode.tree.root
  elseif View.valid() and key:lower() == Config.keys.scroll_down then
    View.scroll(false)
    return M.step(state)
  elseif View.valid() and key:lower() == Config.keys.scroll_up then
    View.scroll(true)
    return M.step(state)
  end

  state.mode:reattach(node or state.node)

  if node and node.action then
    return node.action()
  end

  local keys = vim.deepcopy(state.node.path)
  keys[#keys + 1] = key

  local keystr = table.concat(keys)
  if not xo then
    if vim.v.count > 0 then
      keystr = vim.v.count .. keystr
    end
    if vim.v.register ~= Util.reg() and mode ~= "i" and mode ~= "c" then
      keystr = '"' .. vim.v.register .. keystr
    end
  end
  local feed = vim.api.nvim_replace_termcodes(keystr, true, true, true)
  vim.api.nvim_feedkeys(feed, "mit", false)
end

---@param opts? wk.Filter
function M.start(opts)
  opts = opts or {}
  opts.update = true
  local mode = Buf.get(opts)
  if not mode then
    return false
  end
  local node = mode.tree:find(opts.keys or {})
  if not node then
    return false
  end

  local mapmode = mode.mode

  local View = require("which-key.view")

  M.state = {
    mode = mode,
    node = node,
    filter = opts,
  }

  while M.state do
    mode = Buf.get(opts)
    if not mode or mode.mode ~= mapmode then
      break
    end
    View.update(opts)
    local child = M.step(M.state)
    if child and M.state then
      M.state.node = child
    else
      break
    end
  end
  M.state = nil
  View.hide()
  return true
end

function M.update()
  if not M.state then
    return
  end
  local mode = Buf.get()
  if not mode or mode.mode ~= M.state.mode.mode then
    return
  end
  local node = mode.tree:find(M.state.node.path)
  if not node then
    return
  end
  M.state.node = node
  require("which-key.view").update({ schedule = false })
end

---@param opts {delay?:number, mode:string, keys:string, plugin?:string, waited?: number}
function M.delay(opts)
  local delay = opts.delay or type(Config.delay) == "function" and Config.delay(opts) or Config.delay --[[@as number]]
  if opts.waited then
    delay = delay - opts.waited
  end
  return math.max(0, delay)
end

return M