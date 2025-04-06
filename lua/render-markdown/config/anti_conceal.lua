---@class (exact) render.md.anti.conceal.Config
---@field enabled boolean
---@field ignore render.md.conceal.Ignore
---@field above integer
---@field below integer

---@alias render.md.conceal.Ignore table<render.md.Element, render.md.Modes>

---@enum (key) render.md.Element
local element = {
    head_icon = 'head_icon',
    head_background = 'head_background',
    head_border = 'head_border',
    code_language = 'code_language',
    code_background = 'code_background',
    code_border = 'code_border',
    dash = 'dash',
    bullet = 'bullet',
    check_icon = 'check_icon',
    check_scope = 'check_scope',
    quote = 'quote',
    table_border = 'table_border',
    callout = 'callout',
    link = 'link',
    sign = 'sign',
}

local M = {}

---@param spec render.md.debug.ValidatorSpec
function M.validate(spec)
    spec:type('enabled', 'boolean')
        :nested('ignore', function(ignore)
            ignore:list(vim.tbl_keys(element), 'string', { 'boolean', 'nil' }):check()
        end)
        :type('above', 'number')
        :type('below', 'number')
        :check()
end

return M
