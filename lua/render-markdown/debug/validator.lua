local Iter = require('render-markdown.lib.iter')

---@enum (key) render.md.debug.spec.Kind
local Kind = {
    type = 'type',
    value = 'value',
}

---@class render.md.debug.Spec
---@field kind render.md.debug.spec.Kind
---@field message string
---@field validation fun(value: any): boolean, string?

---@class render.md.debug.ValidatorSpec
---@field private validator render.md.debug.Validator
---@field private data? table<string, any>
---@field private nilable boolean
---@field private path string
---@field private specs table<string, render.md.debug.Spec>
local Spec = {}
Spec.__index = Spec

---@param validator render.md.debug.Validator
---@param data? table<string, any>
---@param nilable boolean
---@param path? string
---@param key any
---@return render.md.debug.ValidatorSpec
function Spec.new(validator, data, nilable, path, key)
    local self = setmetatable({}, Spec)
    self.validator = validator
    self.data = data
    self.nilable = nilable
    self.path = path or ''
    if self.data ~= nil and key ~= nil then
        local keys = type(key) == 'table' and key or { key }
        self.data = vim.tbl_get(self.data, unpack(keys))
        self.data = type(self.data) == 'table' and self.data or nil
        local suffix = table.concat(Iter.list.map(keys, tostring), '.')
        self.path = self.path .. '.' .. suffix
    end
    self.specs = {}
    return self
end

---@param key string
function Spec:config(key)
    local config = require('render-markdown.config.' .. key)
    self:nested(key, config.validate)
end

---@param f fun(spec: render.md.debug.ValidatorSpec)
---@param nilable? boolean
function Spec:each(f, nilable)
    local keys = self.data ~= nil and vim.tbl_keys(self.data) or {}
    self:nested(keys, f, nilable)
end

---@param keys string|string[]
---@param f fun(spec: render.md.debug.ValidatorSpec)
---@param nilable? boolean
function Spec:nested(keys, f, nilable)
    keys = type(keys) == 'table' and keys or { keys }
    if nilable == nil then
        nilable = self.nilable
    end
    for _, key in ipairs(keys) do
        self:type(key, 'table')
        f(Spec.new(self.validator, self.data, nilable, self.path, key))
    end
end

---@param keys string|string[]
---@param ts type|type[]
function Spec:type(keys, ts)
    local types, message = self:handle_types({}, ts)
    self:add(keys, Kind.type, message, function(value)
        return vim.tbl_contains(types, type(value))
    end)
end

---@param keys string|string[]
---@param values string[]
---@param ts? type|type[]
function Spec:one_of(keys, values, ts)
    local options = Iter.list.map(values, vim.inspect)
    local types, message = self:handle_types(options, ts)
    self:add(keys, Kind.value, message, function(value)
        local valid_value = vim.tbl_contains(values, value)
        local valid_type = vim.tbl_contains(types, type(value))
        return valid_value or valid_type
    end)
end

---@param keys string|string[]
---@param t type
---@param ts? type|type[]
function Spec:list(keys, t, ts)
    local types, message = self:handle_types({ t .. '[]' }, ts)
    self:add(keys, Kind.type, message, function(value)
        if vim.tbl_contains(types, type(value)) then
            return true
        elseif type(value) == 'table' then
            for i, item in ipairs(value) do
                if type(item) ~= t then
                    return false, string.format('[%d] is %s', i, type(item))
                end
            end
            return true
        else
            return false
        end
    end)
end

---@param keys string|string[]
---@param t type
---@param ts? type|type[]
function Spec:nested_list(keys, t, ts)
    local types, message = self:handle_types({ t, t .. '[]', t .. '[][]' }, ts)
    self:add(keys, Kind.type, message, function(value)
        if type(value) == t or vim.tbl_contains(types, type(value)) then
            return true
        elseif type(value) == 'table' then
            for i, item in ipairs(value) do
                if type(item) == 'table' then
                    for j, nested in ipairs(item) do
                        if type(nested) ~= t then
                            local info = string.format(
                                '[%d][%d] is %s',
                                i,
                                j,
                                type(nested)
                            )
                            return false, info
                        end
                    end
                elseif type(item) ~= t then
                    return false, string.format('[%d] is %s', i, type(item))
                end
            end
            return true
        else
            return false
        end
    end)
end

---@param keys string|string[]
---@param values string[]
---@param ts? type|type[]
function Spec:one_or_list_of(keys, values, ts)
    local body = table.concat(Iter.list.map(values, vim.inspect), '|')
    local options = '(' .. body .. ')'
    local types, message = self:handle_types({ options, options .. '[]' }, ts)
    self:add(keys, Kind.type, message, function(value)
        if vim.tbl_contains(types, type(value)) then
            return true
        elseif type(value) == 'string' then
            return vim.tbl_contains(values, value)
        elseif type(value) == 'table' then
            for i, item in ipairs(value) do
                if not vim.tbl_contains(values, item) then
                    return false, string.format('[%d] is %s', i, item)
                end
            end
            return true
        else
            return false
        end
    end)
end

---@private
---@param custom string[]
---@param ts? type|type[]
---@return type[], string
function Spec:handle_types(custom, ts)
    local types = nil
    if ts == nil then
        types = {}
    elseif type(ts) == 'string' then
        types = { ts }
    else
        types = ts
    end
    if self.nilable and not vim.tbl_contains(types, 'nil') then
        types[#types + 1] = 'nil'
    end
    return types, table.concat(vim.list_extend(custom, types), ' or ')
end

---@private
---@param keys string|string[]
---@param kind render.md.debug.spec.Kind
---@param message string
---@param validation fun(v: any): boolean, string?
function Spec:add(keys, kind, message, validation)
    if self.data ~= nil then
        keys = type(keys) == 'table' and keys or { keys }
        for _, key in ipairs(keys) do
            self.specs[key] = {
                kind = kind,
                message = message,
                validation = validation,
            }
        end
    end
end

function Spec:check()
    if self.data == nil or vim.tbl_count(self.specs) == 0 then
        return
    end
    self.validator:check(self.path, self.data, self.specs)
end

---@class render.md.debug.Validator
---@field private prefix string
---@field private errors string[]
local Validator = {}
Validator.__index = Validator

---@return render.md.debug.Validator
function Validator.new()
    local self = setmetatable({}, Validator)
    self.prefix = 'render-markdown'
    self.errors = {}
    return self
end

Validator.spec = Spec.new

---@param path string
---@param data table<string, any>
---@param specs table<string, render.md.debug.Spec>
function Validator:check(path, data, specs)
    path = self.prefix .. path
    for key, spec in pairs(specs) do
        local value = data[key]
        local ok, info = spec.validation(value)
        if not ok then
            local message = string.format('%s.%s', path, key)
            message = message .. string.format(' - expected: %s', spec.message)
            message = message .. ', but got: '
            if spec.kind == Kind.type then
                message = message .. type(value)
            end
            if spec.kind == Kind.value then
                message = message .. vim.inspect(value)
            end
            if info ~= nil then
                message = message .. string.format(', info: %s', info)
            end
            self.errors[#self.errors + 1] = message
        end
    end
    for key in pairs(data) do
        if specs[key] == nil then
            local message = string.format('%s.%s - invalid key', path, key)
            self.errors[#self.errors + 1] = message
        end
    end
end

---@return string[]
function Validator:get_errors()
    table.sort(self.errors)
    return self.errors
end

return Validator
