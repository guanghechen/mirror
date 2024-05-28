local state = require('spectre.state')
local search_engine = require('spectre.search')
local replace_engine = require('spectre.replace')
local M = {}

function M.get_finder_creator()
    return search_engine[state.user_config.default.find.cmd]
end

function M.get_replace_creator()
    return replace_engine[state.user_config.default.replace.cmd]
end

local get_options = function(cfg)
    local options_value = {}
    for key, value in pairs(state.options) do
        if value and cfg.options[key] ~= nil then
            table.insert(options_value, cfg.options[key].value)
        end
    end
    return options_value
end

function M.get_replace_engine_config()
    local cfg = state.user_config.replace_engine[state.user_config.default.replace.cmd] or {}
    cfg = vim.deepcopy(cfg)
    cfg.options_value = get_options(cfg)
    return cfg
end

function M.get_search_engine_config()
    local cfg = state.user_config.find_engine[state.user_config.default.find.cmd] or {}
    cfg = vim.deepcopy(cfg)
    cfg.options_value = get_options(cfg)
    return cfg
end

function M.config()
    return state.user_config
end

function M.has_options(key)
    return state.options[key] == true
end

function M.status_line(opt)
    opt = opt or {}
    local slant_right = opt.seprator or ''
    local main_color = opt.main_color or 'black'
    local spectre = {
        filetypes = { 'spectre_panel' },
        active = {
            { ' ಠ_ಠ ', { 'white', main_color } },
            {
                hl_colors = {
                    empty = { main_color, 'NormalBg' },
                    text = { 'black', 'white' },
                    sep_left = { main_color, 'white' },
                    sep_right = { 'white', 'NormalBg' },
                },
                text = function()
                    if state.status_line == '' or state.status_line == nil then
                        return { { slant_right, 'empty' } }
                    else
                        return {
                            { slant_right, 'sep_left' },
                            { state.status_line, 'text' },
                            { slant_right, 'sep_right' },
                        }
                    end
                end,
            },
            { '%=', '' },
            { slant_right, { 'NormalBg', main_color } },
            { ' Spectre ', { 'white', main_color, 'bold' } },
        },
        show_in_active = true,
    }
    return spectre
end
return M