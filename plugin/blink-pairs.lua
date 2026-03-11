local function set_highlights()
  local ns = vim.api.nvim_create_namespace('blink_pairs')
  vim.api.nvim_set_hl(ns, 'BlinkPairsOrange', { ctermfg = 15, fg = '#d65d0e', default = true })
  vim.api.nvim_set_hl(ns, 'BlinkPairsPurple', { ctermfg = 13, fg = '#b16286', default = true })
  vim.api.nvim_set_hl(ns, 'BlinkPairsBlue', { ctermfg = 12, fg = '#458588', default = true })
  vim.api.nvim_set_hl(ns, 'BlinkPairsUnmatched', { ctermfg = 9, fg = '#ff007c', default = true })
  vim.api.nvim_set_hl(ns, 'BlinkPairsMatchParen', { link = 'MatchParen', default = true })
end

set_highlights()
vim.api.nvim_create_autocmd('ColorScheme', {
  group = vim.api.nvim_create_augroup('blink_pairs_highlights', {}),
  callback = set_highlights,
})
