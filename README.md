### Setup

* Fetch from remote and generate CHANGELOG

  ```fish
  node script/fetch.mjs
  ```

* Sync changes to the mirror.git and update the README

  ```fish
  node script/push.mjs
  ```


### Motivation

To backup open source codes.


 Local Branch                         | Remote Branch                                       | Commit                                  
--------------------------------------|-----------------------------------------------------|------------------------------------------
 [nvim@aerial.nvim][]                 | [master][nvim@aerial.nvim#master]                   | 8bb8697d180681746da41bef5c8691d04443af36
 [nvim@avante.nvim][]                 | [main][nvim@avante.nvim#main]                       | bd69ae14f6f1f21642e16c16cbd18954f62365aa
 [nvim@blink.cmp][]                   | [main][nvim@blink.cmp#main]                         | 90d14caca4ae557665ab105080c27d5f289a2e30
 [nvim@blink.compat][]                | [main][nvim@blink.compat#main]                      | 1454f14a8d855a578ceeba77c62538fa1459a67c
 [nvim@blink.indent][]                | [main][nvim@blink.indent#main]                      | 9c80820ca77218a8d28e70075d6f44a1609911fe
 [nvim@blink.pairs][]                 | [main][nvim@blink.pairs#main]                       | 2da33da164fbbf5cf52214fb9e7db1096d55e0dc
 [nvim@ccc.nvim][]                    | [main][nvim@ccc.nvim#main]                          | 9d1a256e006decc574789dfc7d628ca11644d4c2
 [nvim@cmp-buffer][]                  | [main][nvim@cmp-buffer#main]                        | b74fab3656eea9de20a9b8116afa3cfc4ec09657
 [nvim@cmp-luasnip][]                 | [master][nvim@cmp-luasnip#master]                   | 98d9cb5c2c38532bd9bdb481067b20fea8f32e90
 [nvim@cmp-nvim-lsp][]                | [main][nvim@cmp-nvim-lsp#main]                      | a8912b88ce488f411177fc8aed358b04dc246d7b
 [nvim@cmp-path][]                    | [main][nvim@cmp-path#main]                          | c6635aae33a50d6010bf1aa756ac2398a2d54c32
 [nvim@conform.nvim][]                | [master][nvim@conform.nvim#master]                  | 086a40dc7ed8242c03be9f47fbcee68699cc2395
 [nvim@copilot-cmp][]                 | [master][nvim@copilot-cmp#master]                   | 15fc12af3d0109fa76b60b5cffa1373697e261d1
 [nvim@copilot.lua][]                 | [master][nvim@copilot.lua#master]                   | 3cd5086c28c5769f5db147721f457a3e081de254
 [nvim@copilot-chat.nvim][]           | [main][nvim@copilot-chat.nvim#main]                 | 55f2162c36901224e22ff8424fd60ecef670b8fc
 [nvim@diffview.nvim][]               | [main][nvim@diffview.nvim#main]                     | 4516612fe98ff56ae0415a259ff6361a89419b0a
 [nvim@dressing.nvim][]               | [master][nvim@dressing.nvim#master]                 | 3a45525bb182730fe462325c99395529308f431e
 [nvim@flash.nvim][]                  | [main][nvim@flash.nvim#main]                        | fcea7ff883235d9024dc41e638f164a450c14ca2
 [nvim@friendly-snippets][]           | [main][nvim@friendly-snippets#main]                 | 6cd7280adead7f586db6fccbd15d2cac7e2188b9
 [nvim@gitsigns.nvim][]               | [main][nvim@gitsigns.nvim#main]                     | 6d808f99bd63303646794406e270bd553ad7792e
 [nvim@img-clip.nvim][]               | [main][nvim@img-clip.nvim#main]                     | 5ff183655ad98b5fc50c55c66540375bbd62438c
 [nvim@indent-blankline.nvim][]       | [master][nvim@indent-blankline.nvim#master]         | 005b56001b2cb30bfa61b7986bc50657816ba4ba
 [nvim@lazy.nvim][]                   | [main][nvim@lazy.nvim#main]                         | 306a05526ada86a7b30af95c5cc81ffba93fef97
 [nvim@luasnip.nvim][]                | [master][nvim@luasnip.nvim#master]                  | 33b06d72d220aa56a7ce80a0dd6f06c70cd82b9d
 [nvim@mason.nvim][]                  | [main][nvim@mason.nvim#main]                        | b03fb0f20bc1d43daf558cda981a2be22e73ac42
 [nvim@mason-lspconfig.nvim][]        | [main][nvim@mason-lspconfig.nvim#main]              | c4c84f4521d62de595c0d0f718a9a40c1890c8ce
 [nvim@mason-nvim-dap][]              | [main][nvim@mason-nvim-dap#main]                    | 09220b99d63d5363f219daa2785242ee5fddba7f
 [nvim@mini.ai][]                     | [main][nvim@mini.ai#main]                           | 43eb2074843950a3a25aae56a5f41362ec043bfa
 [nvim@mini.comment][]                | [main][nvim@mini.comment#main]                      | a56581c40c19fa26f2b39da72504398de3173c5a
 [nvim@mini.hipatterns][]             | [main][nvim@mini.hipatterns#main]                   | 9eff319bbe66adfaf781a0d0e174baa08ba94909
 [nvim@mini.icons][]                  | [main][nvim@mini.icons#main]                        | bac6317300e205335df425296570d84322730067
 [nvim@mini.indentscope][]            | [main][nvim@mini.indentscope#main]                  | e0601f75aa5137a5a13bb92a988c9a300f5bd3de
 [nvim@mini.pairs][]                  | [main][nvim@mini.pairs#main]                        | 42387c7fe68fc0b6e95eaf37f1bb76e7bffaa0d9
 [nvim@mini.splitjoin][]              | [main][nvim@mini.splitjoin#main]                    | 8bd5a3d581b9f3dd3bc91fe495e210b8b0ee981d
 [nvim@mini.surround][]               | [main][nvim@mini.surround#main]                     | 2715e04bea3ec9244f15b421dc5b18c0fe326210
 [nvim@mini.trailspace][]             | [main][nvim@mini.trailspace#main]                   | b362246495d18c29b4545a8f1c47f627f8011b7c
 [nvim@neo-tree.nvim][]               | [main][nvim@neo-tree.nvim#main]                     | 2ab61f0a4f97e909f80b430f43a1ddae142c548d
 [nvim@noice.nvim][]                  | [main][nvim@noice.nvim#main]                        | 7bfd942445fb63089b59f97ca487d605e715f155
 [nvim@nui.nvim][]                    | [main][nvim@nui.nvim#main]                          | de740991c12411b663994b2860f1a4fd0937c130
 [nvim@nvim-cmp][]                    | [main][nvim@nvim-cmp#main]                          | b5311ab3ed9c846b585c0c15b7559be131ec4be9
 [nvim@nvim-colorizer.lua][]          | [master][nvim@nvim-colorizer.lua#master]            | 4acf88d31b3a7a1a7f31e9c30bf2b23c6313abdb
 [nvim@nvim-dap][]                    | [master][nvim@nvim-dap#master]                      | 45a69eba683a2c448dd9ecfc4de89511f0646b5f
 [nvim@nvim-dap-python][]             | [master][nvim@nvim-dap-python#master]               | 1808458eba2b18f178f990e01376941a42c7f93b
 [nvim@nvim-dap-ui][]                 | [master][nvim@nvim-dap-ui#master]                   | 1a66cabaa4a4da0be107d5eda6d57242f0fe7e49
 [nvim@nvim-dap-virtual-text][]       | [master][nvim@nvim-dap-virtual-text#master]         | fbdb48c2ed45f4a8293d0d483f7730d24467ccb6
 [nvim@nvim-lint][]                   | [master][nvim@nvim-lint#master]                     | eab58b48eb11d7745c11c505e0f3057165902461
 [nvim@nvim-lspconfig][]              | [master][nvim@nvim-lspconfig#master]                | e05fb8c3bd61d909dacff24f77f23beb644daf54
 [nvim@nvim-nio][]                    | [master][nvim@nvim-nio#master]                      | 21f5324bfac14e22ba26553caf69ec76ae8a7662
 [nvim@nvim-notify][]                 | [master][nvim@nvim-notify#master]                   | a22f5d7ac511c2df2fd3290a9f04c48d5a822e2e
 [nvim@nvim-snippets][]               | [main][nvim@nvim-snippets#main]                     | 56b4052f71220144689caaa2e5b66222ba5661eb
 [nvim@telescope.nvim][]              | [master][nvim@telescope.nvim#master]                | b4da76be54691e854d3e0e02c36b0245f945c2c7
 [nvim@nvim-tmux-navigation][]        | [main][nvim@nvim-tmux-navigation#main]              | 4898c98702954439233fdaf764c39636681e2861
 [nvim@nvim-treesitter][]             | [main][nvim@nvim-treesitter#main]                   | 4916d6592ede8c07973490d9322f187e07dfefac
 [nvim@nvim-treesitter-context][]     | [master][nvim@nvim-treesitter-context#master]       | b0c45cefe2c8f7b55fc46f34e563bc428ef99636
 [nvim@nvim-treesitter-textobjects][] | [main][nvim@nvim-treesitter-textobjects#main]       | 851e865342e5a4cb1ae23d31caf6e991e1c99f1e
 [nvim@nvim-window-picker][]          | [main][nvim@nvim-window-picker#main]                | 41cfaa428577c53552200a404ae9b3a0b5719706
 [nvim@plenary.nvim][]                | [master][nvim@plenary.nvim#master]                  | b9fd5226c2f76c951fc8ed5923d85e4de065e509
 [nvim@render-markdown.nvim][]        | [main][nvim@render-markdown.nvim#main]              | d67113f11384c0dad96fced2f7b91f1fc811e97f
 [nvim@schema-store.nvim][]           | [main][nvim@schema-store.nvim#main]                 | 250aed7415ddd6cb3ea321490c7b35094ed9148d
 [nvim@sidekick.nvim][]               | [main][nvim@sidekick.nvim#main]                     | 17447a05f9385e5f8372b61530f6f9329cb82421
 [nvim@smear-cursor.nvim][]           | [main][nvim@smear-cursor.nvim#main]                 | 3879bc2eb4a2a07a8637256fe33cc4484a23a813
 [nvim@trouble.nvim][]                | [main][nvim@trouble.nvim#main]                      | 76030c5542c5d132aeeb467ca0ab370f3f79a697
 [nvim@vim-illuminate][]              | [master][nvim@vim-illuminate#master]                | b5713e6ca3f627b46968386d6d3f24d374d3cb17
 [nvim@which-key.nvim][]              | [main][nvim@which-key.nvim#main]                    | 3aab2147e74890957785941f0c1ad87d0a44c15a

[nvim@aerial.nvim]: https://github.com/guanghechen/mirror/tree/nvim@aerial.nvim
[nvim@avante.nvim]: https://github.com/guanghechen/mirror/tree/nvim@avante.nvim
[nvim@blink.cmp]: https://github.com/guanghechen/mirror/tree/nvim@blink.cmp
[nvim@blink.compat]: https://github.com/guanghechen/mirror/tree/nvim@blink.compat
[nvim@blink.indent]: https://github.com/guanghechen/mirror/tree/nvim@blink.indent
[nvim@blink.pairs]: https://github.com/guanghechen/mirror/tree/nvim@blink.pairs
[nvim@ccc.nvim]: https://github.com/guanghechen/mirror/tree/nvim@ccc.nvim
[nvim@cmp-buffer]: https://github.com/guanghechen/mirror/tree/nvim@cmp-buffer
[nvim@cmp-luasnip]: https://github.com/guanghechen/mirror/tree/nvim@cmp-luasnip
[nvim@cmp-nvim-lsp]: https://github.com/guanghechen/mirror/tree/nvim@cmp-nvim-lsp
[nvim@cmp-path]: https://github.com/guanghechen/mirror/tree/nvim@cmp-path
[nvim@conform.nvim]: https://github.com/guanghechen/mirror/tree/nvim@conform.nvim
[nvim@copilot-cmp]: https://github.com/guanghechen/mirror/tree/nvim@copilot-cmp
[nvim@copilot.lua]: https://github.com/guanghechen/mirror/tree/nvim@copilot.lua
[nvim@copilot-chat.nvim]: https://github.com/guanghechen/mirror/tree/nvim@copilot-chat.nvim
[nvim@diffview.nvim]: https://github.com/guanghechen/mirror/tree/nvim@diffview.nvim
[nvim@dressing.nvim]: https://github.com/guanghechen/mirror/tree/nvim@dressing.nvim
[nvim@flash.nvim]: https://github.com/guanghechen/mirror/tree/nvim@flash.nvim
[nvim@friendly-snippets]: https://github.com/guanghechen/mirror/tree/nvim@friendly-snippets
[nvim@gitsigns.nvim]: https://github.com/guanghechen/mirror/tree/nvim@gitsigns.nvim
[nvim@img-clip.nvim]: https://github.com/guanghechen/mirror/tree/nvim@img-clip.nvim
[nvim@indent-blankline.nvim]: https://github.com/guanghechen/mirror/tree/nvim@indent-blankline.nvim
[nvim@lazy.nvim]: https://github.com/guanghechen/mirror/tree/nvim@lazy.nvim
[nvim@luasnip.nvim]: https://github.com/guanghechen/mirror/tree/nvim@luasnip.nvim
[nvim@mason.nvim]: https://github.com/guanghechen/mirror/tree/nvim@mason.nvim
[nvim@mason-lspconfig.nvim]: https://github.com/guanghechen/mirror/tree/nvim@mason-lspconfig.nvim
[nvim@mason-nvim-dap]: https://github.com/guanghechen/mirror/tree/nvim@mason-nvim-dap
[nvim@mini.ai]: https://github.com/guanghechen/mirror/tree/nvim@mini.ai
[nvim@mini.comment]: https://github.com/guanghechen/mirror/tree/nvim@mini.comment
[nvim@mini.hipatterns]: https://github.com/guanghechen/mirror/tree/nvim@mini.hipatterns
[nvim@mini.icons]: https://github.com/guanghechen/mirror/tree/nvim@mini.icons
[nvim@mini.indentscope]: https://github.com/guanghechen/mirror/tree/nvim@mini.indentscope
[nvim@mini.pairs]: https://github.com/guanghechen/mirror/tree/nvim@mini.pairs
[nvim@mini.splitjoin]: https://github.com/guanghechen/mirror/tree/nvim@mini.splitjoin
[nvim@mini.surround]: https://github.com/guanghechen/mirror/tree/nvim@mini.surround
[nvim@mini.trailspace]: https://github.com/guanghechen/mirror/tree/nvim@mini.trailspace
[nvim@neo-tree.nvim]: https://github.com/guanghechen/mirror/tree/nvim@neo-tree.nvim
[nvim@noice.nvim]: https://github.com/guanghechen/mirror/tree/nvim@noice.nvim
[nvim@nui.nvim]: https://github.com/guanghechen/mirror/tree/nvim@nui.nvim
[nvim@nvim-cmp]: https://github.com/guanghechen/mirror/tree/nvim@nvim-cmp
[nvim@nvim-colorizer.lua]: https://github.com/guanghechen/mirror/tree/nvim@nvim-colorizer.lua
[nvim@nvim-dap]: https://github.com/guanghechen/mirror/tree/nvim@nvim-dap
[nvim@nvim-dap-python]: https://github.com/guanghechen/mirror/tree/nvim@nvim-dap-python
[nvim@nvim-dap-ui]: https://github.com/guanghechen/mirror/tree/nvim@nvim-dap-ui
[nvim@nvim-dap-virtual-text]: https://github.com/guanghechen/mirror/tree/nvim@nvim-dap-virtual-text
[nvim@nvim-lint]: https://github.com/guanghechen/mirror/tree/nvim@nvim-lint
[nvim@nvim-lspconfig]: https://github.com/guanghechen/mirror/tree/nvim@nvim-lspconfig
[nvim@nvim-nio]: https://github.com/guanghechen/mirror/tree/nvim@nvim-nio
[nvim@nvim-notify]: https://github.com/guanghechen/mirror/tree/nvim@nvim-notify
[nvim@nvim-snippets]: https://github.com/guanghechen/mirror/tree/nvim@nvim-snippets
[nvim@telescope.nvim]: https://github.com/guanghechen/mirror/tree/nvim@telescope.nvim
[nvim@nvim-tmux-navigation]: https://github.com/guanghechen/mirror/tree/nvim@nvim-tmux-navigation
[nvim@nvim-treesitter]: https://github.com/guanghechen/mirror/tree/nvim@nvim-treesitter
[nvim@nvim-treesitter-context]: https://github.com/guanghechen/mirror/tree/nvim@nvim-treesitter-context
[nvim@nvim-treesitter-textobjects]: https://github.com/guanghechen/mirror/tree/nvim@nvim-treesitter-textobjects
[nvim@nvim-window-picker]: https://github.com/guanghechen/mirror/tree/nvim@nvim-window-picker
[nvim@plenary.nvim]: https://github.com/guanghechen/mirror/tree/nvim@plenary.nvim
[nvim@render-markdown.nvim]: https://github.com/guanghechen/mirror/tree/nvim@render-markdown.nvim
[nvim@schema-store.nvim]: https://github.com/guanghechen/mirror/tree/nvim@schema-store.nvim
[nvim@sidekick.nvim]: https://github.com/guanghechen/mirror/tree/nvim@sidekick.nvim
[nvim@smear-cursor.nvim]: https://github.com/guanghechen/mirror/tree/nvim@smear-cursor.nvim
[nvim@trouble.nvim]: https://github.com/guanghechen/mirror/tree/nvim@trouble.nvim
[nvim@vim-illuminate]: https://github.com/guanghechen/mirror/tree/nvim@vim-illuminate
[nvim@which-key.nvim]: https://github.com/guanghechen/mirror/tree/nvim@which-key.nvim

[nvim@aerial.nvim#master]: https://github.com/stevearc/aerial.nvim/tree/master
[nvim@avante.nvim#main]: https://github.com/yetone/avante.nvim/tree/main
[nvim@blink.cmp#main]: https://github.com/Saghen/blink.cmp/tree/main
[nvim@blink.compat#main]: https://github.com/Saghen/blink.compat/tree/main
[nvim@blink.indent#main]: https://github.com/saghen/blink.indent/tree/main
[nvim@blink.pairs#main]: https://github.com/Saghen/blink.pairs/tree/main
[nvim@ccc.nvim#main]: https://github.com/uga-rosa/ccc.nvim/tree/main
[nvim@cmp-buffer#main]: https://github.com/hrsh7th/cmp-buffer/tree/main
[nvim@cmp-luasnip#master]: https://github.com/saadparwaiz1/cmp_luasnip/tree/master
[nvim@cmp-nvim-lsp#main]: https://github.com/hrsh7th/cmp-nvim-lsp/tree/main
[nvim@cmp-path#main]: https://github.com/hrsh7th/cmp-path/tree/main
[nvim@conform.nvim#master]: https://github.com/stevearc/conform.nvim/tree/master
[nvim@copilot-cmp#master]: https://github.com/zbirenbaum/copilot-cmp/tree/master
[nvim@copilot.lua#master]: https://github.com/zbirenbaum/copilot.lua/tree/master
[nvim@copilot-chat.nvim#main]: https://github.com/CopilotC-Nvim/CopilotChat.nvim/tree/main
[nvim@diffview.nvim#main]: https://github.com/sindrets/diffview.nvim/tree/main
[nvim@dressing.nvim#master]: https://github.com/stevearc/dressing.nvim/tree/master
[nvim@flash.nvim#main]: https://github.com/folke/flash.nvim/tree/main
[nvim@friendly-snippets#main]: https://github.com/rafamadriz/friendly-snippets/tree/main
[nvim@gitsigns.nvim#main]: https://github.com/lewis6991/gitsigns.nvim/tree/main
[nvim@img-clip.nvim#main]: https://github.com/HakonHarnes/img-clip.nvim/tree/main
[nvim@indent-blankline.nvim#master]: https://github.com/lukas-reineke/indent-blankline.nvim/tree/master
[nvim@lazy.nvim#main]: https://github.com/folke/lazy.nvim/tree/main
[nvim@luasnip.nvim#master]: https://github.com/L3MON4D3/LuaSnip/tree/master
[nvim@mason.nvim#main]: https://github.com/mason-org/mason.nvim/tree/main
[nvim@mason-lspconfig.nvim#main]: https://github.com/mason-org/mason-lspconfig.nvim/tree/main
[nvim@mason-nvim-dap#main]: https://github.com/jay-babu/mason-nvim-dap.nvim/tree/main
[nvim@mini.ai#main]: https://github.com/nvim-mini/mini.ai/tree/main
[nvim@mini.comment#main]: https://github.com/nvim-mini/mini.comment/tree/main
[nvim@mini.hipatterns#main]: https://github.com/nvim-mini/mini.hipatterns/tree/main
[nvim@mini.icons#main]: https://github.com/nvim-mini/mini.icons/tree/main
[nvim@mini.indentscope#main]: https://github.com/nvim-mini/mini.indentscope/tree/main
[nvim@mini.pairs#main]: https://github.com/nvim-mini/mini.pairs/tree/main
[nvim@mini.splitjoin#main]: https://github.com/nvim-mini/mini.splitjoin/tree/main
[nvim@mini.surround#main]: https://github.com/nvim-mini/mini.surround/tree/main
[nvim@mini.trailspace#main]: https://github.com/nvim-mini/mini.trailspace/tree/main
[nvim@neo-tree.nvim#main]: https://github.com/nvim-neo-tree/neo-tree.nvim/tree/main
[nvim@noice.nvim#main]: https://github.com/folke/noice.nvim/tree/main
[nvim@nui.nvim#main]: https://github.com/MunifTanjim/nui.nvim/tree/main
[nvim@nvim-cmp#main]: https://github.com/hrsh7th/nvim-cmp/tree/main
[nvim@nvim-colorizer.lua#master]: https://github.com/NvChad/nvim-colorizer.lua/tree/master
[nvim@nvim-dap#master]: https://github.com/mfussenegger/nvim-dap/tree/master
[nvim@nvim-dap-python#master]: https://github.com/mfussenegger/nvim-dap-python/tree/master
[nvim@nvim-dap-ui#master]: https://github.com/rcarriga/nvim-dap-ui/tree/master
[nvim@nvim-dap-virtual-text#master]: https://github.com/theHamsta/nvim-dap-virtual-text/tree/master
[nvim@nvim-lint#master]: https://github.com/mfussenegger/nvim-lint/tree/master
[nvim@nvim-lspconfig#master]: https://github.com/neovim/nvim-lspconfig/tree/master
[nvim@nvim-nio#master]: https://github.com/nvim-neotest/nvim-nio/tree/master
[nvim@nvim-notify#master]: https://github.com/rcarriga/nvim-notify/tree/master
[nvim@nvim-snippets#main]: https://github.com/garymjr/nvim-snippets/tree/main
[nvim@telescope.nvim#master]: https://github.com/nvim-telescope/telescope.nvim/tree/master
[nvim@nvim-tmux-navigation#main]: https://github.com/alexghergh/nvim-tmux-navigation/tree/main
[nvim@nvim-treesitter#main]: https://github.com/nvim-treesitter/nvim-treesitter/tree/main
[nvim@nvim-treesitter-context#master]: https://github.com/nvim-treesitter/nvim-treesitter-context/tree/master
[nvim@nvim-treesitter-textobjects#main]: https://github.com/nvim-treesitter/nvim-treesitter-textobjects/tree/main
[nvim@nvim-window-picker#main]: https://github.com/s1n7ax/nvim-window-picker/tree/main
[nvim@plenary.nvim#master]: https://github.com/nvim-lua/plenary.nvim/tree/master
[nvim@render-markdown.nvim#main]: https://github.com/MeanderingProgrammer/render-markdown.nvim/tree/main
[nvim@schema-store.nvim#main]: https://github.com/b0o/SchemaStore.nvim/tree/main
[nvim@sidekick.nvim#main]: https://github.com/folke/sidekick.nvim/tree/main
[nvim@smear-cursor.nvim#main]: https://github.com/sphamba/smear-cursor.nvim/tree/main
[nvim@trouble.nvim#main]: https://github.com/folke/trouble.nvim/tree/main
[nvim@vim-illuminate#master]: https://github.com/RRethy/vim-illuminate/tree/master
[nvim@which-key.nvim#main]: https://github.com/folke/which-key.nvim/tree/main