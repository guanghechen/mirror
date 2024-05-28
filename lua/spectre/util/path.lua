local util_os = require('spectre.util.os')
local PATH_SEPARATOR = ','

---@class spectre.util.path
local M = {}

---@param path_string string
---@return string[]
function M.parse_paths(path_string)
    local paths = {} ---@type string[]
    local pathsep = util_os.get_path_sep() ---@type string

    local i = 1 ---@type number
    local path = '' ---@type string
    while i < #path_string do
        local c = path_string[i]
        if i == PATH_SEPARATOR then
            if #path > 0 then
                table.insert(paths, path)
            end
            path = ''
        else
            if c == '\\' or c == '/' then
                path = path .. pathsep
            elseif not c:match('%s') or #path > 0 then
                path = path .. c
            end
        end
        i = i + 1
    end
    return paths
end

return M
