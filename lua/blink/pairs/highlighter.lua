local highlighter = {}

--- @param config blink.pairs.HighlightsConfig
function highlighter.register(config)
  --- @type fun(match: blink.pairs.Match): string
  --- @diagnostic disable-next-line: assign-type-mismatch
  local get_match_highlight = type(config.groups) == 'function' and config.groups
    or function(match) return config.groups[match.stack_height % #config.groups + 1] end

  vim.api.nvim_set_decoration_provider(config.ns, {
    on_win = function(_, _, bufnr)
      local is_cmdline_extui_buf = vim.bo[bufnr].filetype == 'cmd'
      local is_cmdline = vim.api.nvim_get_mode().mode:match('c')
      if not config.cmdline and is_cmdline_extui_buf and is_cmdline then return false end

      -- when in cmdline mode with :substitute, the text will be updated, without triggering
      -- nvim_buf_attach or any autocmds, so the parsing state will be outdated
      if not is_cmdline_extui_buf and is_cmdline then return false end

      vim.api.nvim_buf_clear_namespace(bufnr, config.ns, 0, -1)
      return require('blink.pairs.watcher').attach(bufnr)
    end,
    on_line = function(_, _, bufnr, line_number)
      for _, match in ipairs(require('blink.pairs.rust').get_line_matches(bufnr, line_number)) do
        local hl_group = match.stack_height == nil and config.unmatched_group or get_match_highlight(match)

        vim.api.nvim_buf_set_extmark(bufnr, config.ns, line_number, match.col, {
          end_col = match.col + match[1]:len(),
          hl_group = hl_group,
          hl_mode = 'combine',
          priority = config.priority,
        })
      end
    end,
  })

  if config.matchparen.enabled then require('blink.pairs.matchparen').setup(config) end
end

return highlighter
