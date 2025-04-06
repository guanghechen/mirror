local Base = require('render-markdown.render.base')

---@class render.md.render.Paragraph: render.md.Renderer
---@field private paragraph render.md.paragraph.Config
local Render = setmetatable({}, Base)
Render.__index = Render

---@return boolean
function Render:setup()
    self.paragraph = self.config.paragraph
    if self.context:skip(self.paragraph) then
        return false
    end
    if self.paragraph.left_margin <= 0 then
        return false
    end
    return true
end

function Render:render()
    local width = vim.fn.max(self.node:widths())
    width = math.max(width, self.paragraph.min_width)
    local margin = self.context:percent(self.paragraph.left_margin, width)
    local line = self:append({}, margin)
    if #line == 0 then
        return
    end
    for row = self.node.start_row, self.node.end_row - 1 do
        self.marks:add(false, row, 0, {
            priority = 0,
            virt_text = line,
            virt_text_pos = 'inline',
        })
    end
end

return Render
