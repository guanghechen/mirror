---@module 'snacks'

local Loc = require("sidekick.cli.context.location")

local M = {}

---@type snacks.picker.Action.fn
function M.send(picker)
  local Util = require("snacks.picker.util")
  local ret = {} ---@type sidekick.Text[]
  local selected = picker:selected({ fallback = true })

  local cwd = vim.fs.normalize(vim.fn.getcwd(0))

  for _, item in ipairs(selected) do
    local pos, end_pos = item.pos, item.end_pos
    local file = Loc.get({
      buf = item.buf,
      cwd = cwd,
      name = Util.path(item),
      row = pos and pos[1] or 1,
      col = pos and pos[2] or 1,
      range = end_pos and { from = pos, to = end_pos } or nil,
    }, {
      kind = (pos and (picker.opts.source or ""):find("grep")) and "position" or "file",
    })[1]

    if file then
      ret[#ret + 1] = file
    end
  end

  picker:close()

  vim.schedule(function()
    require("sidekick.cli").send({ text = ret })
  end)
end

return M
