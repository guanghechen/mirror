---@class (exact) render.md.sign.Config
---@field enabled boolean
---@field highlight string

local M = {}

---@param spec render.md.debug.ValidatorSpec
function M.validate(spec)
    spec:type('enabled', 'boolean'):type('highlight', 'string'):check()
end

return M
