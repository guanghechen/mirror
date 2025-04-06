---@class (exact) render.md.padding.Config
---@field highlight string

local M = {}

---@param spec render.md.debug.ValidatorSpec
function M.validate(spec)
    spec:type('highlight', 'string'):check()
end

return M
