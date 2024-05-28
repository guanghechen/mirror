local util_os = require('spectre.util.os')
local PATHSEP = util_os.get_path_sep() ---@type string
local PATH_SEPARATOR = ','

---@class spectre.util.path
local M = {}

---@param filepath string
---@return boolean
function M.is_absolute(filepath)
  if util_os.is_windows() then
    return string.match(filepath, '^[%a]:[\\/].*$') ~= nil
  end
  return string.sub(filepath, 1, 1) == path_sep
end

---@param filepath string
---@return string[]
function M.split(filepath)
  local pieces = {} ---@type string[]
  local pattern = '([^/\\]+)' ---@type string
  local has_prefix_sep = PATHSEP == '/' and string.sub(filepath, 1, 1) == PATHSEP ---@type boolean

  for piece in string.gmatch(filepath, pattern) do
    if #piece > 0 and piece ~= '.' then
      if piece == '..' and (has_prefix_sep or #pieces > 0) then
        table.remove(pieces, #pieces)
      else
        table.insert(pieces, piece)
      end
    end
  end
  if has_prefix_sep then
    table.insert(pieces, 1, '')
  end
  return pieces
end

---@param filepath string
---@return string
function M.normalize(filepath)
  return table.concat(M.split(filepath), PATHSEP)
end

---@param path_string string
---@return string[]
function M.parse_paths(path_string)
  local paths = {} ---@type string[]

  local i = 1 ---@type number
  local s = 0
  local t = 0
  while i < #path_string do
    local c = path_string[i]
    if i == PATH_SEPARATOR then
      if s > 0 and t > 0 then
        local p = string.sub(path_string, s, t)
        table.insert(paths, M.normalize(p))
      end
      s = 0
      t = 0
    elseif not c:match('%s') then
      s = s == 0 and i or s
      t = i
    end
    i = i + 1
  end
  return paths
end

return M
