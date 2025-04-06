---@class (exact) render.md.table.Config: render.md.base.Config
---@field preset render.md.table.Preset
---@field style render.md.table.Style
---@field cell render.md.table.Cell
---@field padding integer
---@field min_width integer
---@field border string[]
---@field alignment_indicator string
---@field head string
---@field row string
---@field filler string

---@enum (key) render.md.table.Preset
local Preset = {
    none = 'none',
    round = 'round',
    double = 'double',
    heavy = 'heavy',
}

---@enum (key) render.md.table.Style
local Style = {
    full = 'full',
    normal = 'normal',
    none = 'none',
}

---@enum (key) render.md.table.Cell
local Cell = {
    trimmed = 'trimmed',
    padded = 'padded',
    raw = 'raw',
    overlay = 'overlay',
}

local M = {}

---@param spec render.md.debug.ValidatorSpec
function M.validate(spec)
    require('render-markdown.config.base').validate(spec)
    spec:one_of('preset', vim.tbl_keys(Preset))
        :one_of('style', vim.tbl_keys(Style))
        :one_of('cell', vim.tbl_keys(Cell))
        :type('padding', 'number')
        :type('min_width', 'number')
        :list('border', 'string')
        :type('alignment_indicator', 'string')
        :type('head', 'string')
        :type('row', 'string')
        :type('filler', 'string')
        :check()
end

return M
