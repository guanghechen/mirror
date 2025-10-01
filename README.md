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
 [nvim@aerial.nvim][]                 | [master][nvim@aerial.nvim#master]                   | 5e687b5a14004fa2dd9eccbee042b96869fe1557
 [nvim@avante.nvim][]                 | [main][nvim@avante.nvim#main]                       | bd69ae14f6f1f21642e16c16cbd18954f62365aa
 [nvim@blink.cmp][]                   | [main][nvim@blink.cmp#main]                         | a999ddca2f629faf8a554a8fff904931935a7b1c
 [nvim@blink.compat][]                | [main][nvim@blink.compat#main]                      | 1454f14a8d855a578ceeba77c62538fa1459a67c
 [nvim@blink.pairs][]                 | [main][nvim@blink.pairs#main]                       | c2d4030c10e6628de159cbac79a32a70ad746290
 [nvim@cmp-buffer][]                  | [main][nvim@cmp-buffer#main]                        | b74fab3656eea9de20a9b8116afa3cfc4ec09657
 [nvim@cmp-luasnip][]                 | [master][nvim@cmp-luasnip#master]                   | 98d9cb5c2c38532bd9bdb481067b20fea8f32e90
 [nvim@cmp-nvim-lsp][]                | [main][nvim@cmp-nvim-lsp#main]                      | a8912b88ce488f411177fc8aed358b04dc246d7b
 [nvim@cmp-path][]                    | [main][nvim@cmp-path#main]                          | c6635aae33a50d6010bf1aa756ac2398a2d54c32
 [nvim@conform.nvim][]                | [master][nvim@conform.nvim#master]                  | c64cc754ace603e185ab30113aaef174187eacf8
 [nvim@copilot-cmp][]                 | [master][nvim@copilot-cmp#master]                   | 15fc12af3d0109fa76b60b5cffa1373697e261d1
 [nvim@copilot.lua][]                 | [master][nvim@copilot.lua#master]                   | 3cd5086c28c5769f5db147721f457a3e081de254
 [nvim@copilot-chat.nvim][]           | [main][nvim@copilot-chat.nvim#main]                 | 55f2162c36901224e22ff8424fd60ecef670b8fc
 [nvim@diffview.nvim][]               | [main][nvim@diffview.nvim#main]                     | 4516612fe98ff56ae0415a259ff6361a89419b0a
 [nvim@dressing.nvim][]               | [master][nvim@dressing.nvim#master]                 | 3a45525bb182730fe462325c99395529308f431e
 [nvim@flash.nvim][]                  | [main][nvim@flash.nvim#main]                        | b68bda044d68e4026c4e1ec6df3c5afd7eb8e341
 [nvim@friendly-snippets][]           | [main][nvim@friendly-snippets#main]                 | 572f5660cf05f8cd8834e096d7b4c921ba18e175
 [nvim@gitsigns.nvim][]               | [main][nvim@gitsigns.nvim#main]                     | 0c6826374f47fcbb2b53053986ccc59c115044ff
 [nvim@img-clip.nvim][]               | [main][nvim@img-clip.nvim#main]                     | 5ff183655ad98b5fc50c55c66540375bbd62438c
 [nvim@indent-blankline.nvim][]       | [master][nvim@indent-blankline.nvim#master]         | 005b56001b2cb30bfa61b7986bc50657816ba4ba
 [nvim@lazy.nvim][]                   | [main][nvim@lazy.nvim#main]                         | 6c3bda4aca61a13a9c63f1c1d1b16b9d3be90d7a
 [nvim@luasnip.nvim][]                | [master][nvim@luasnip.nvim#master]                  | 33b06d72d220aa56a7ce80a0dd6f06c70cd82b9d
 [nvim@mason.nvim][]                  | [main][nvim@mason.nvim#main]                        | a83eabdc8c49c0c93bf5bb162fa3b57404a9d095
 [nvim@mason-lspconfig.nvim][]        | [main][nvim@mason-lspconfig.nvim#main]              | c4c84f4521d62de595c0d0f718a9a40c1890c8ce
 [nvim@mason-nvim-dap][]              | [main][nvim@mason-nvim-dap#main]                    | 09220b99d63d5363f219daa2785242ee5fddba7f
 [nvim@mini.ai][]                     | [main][nvim@mini.ai#main]                           | e0d00c227112e942ed2789dd4c21d651002831c0
 [nvim@mini.comment][]                | [main][nvim@mini.comment#main]                      | a56581c40c19fa26f2b39da72504398de3173c5a
 [nvim@mini.hipatterns][]             | [main][nvim@mini.hipatterns#main]                   | 1e0e8f51d50b18eb23b50eef8d97bfd9482e29d9
 [nvim@mini.icons][]                  | [main][nvim@mini.icons#main]                        | e8fae66cb400744daeedf6e387347df50271c252
 [nvim@mini.indentscope][]            | [main][nvim@mini.indentscope#main]                  | fc1bb1e4573f7174cb6e2bbabc3453340a9eec16
 [nvim@mini.pairs][]                  | [main][nvim@mini.pairs#main]                        | bada72fe4ec607f882a098d15aa4a3279bc6883d
 [nvim@mini.surround][]               | [main][nvim@mini.surround#main]                     | aec6ed2902a2fd809e3c2fe79ee4568791285201
 [nvim@neo-tree.nvim][]               | [main][nvim@neo-tree.nvim#main]                     | 8dd9f08ff086d09d112f1873f88dc0f74b598cdb
 [nvim@noice.nvim][]                  | [main][nvim@noice.nvim#main]                        | 0427460c2d7f673ad60eb02b35f5e9926cf67c59
 [nvim@nui.nvim][]                    | [main][nvim@nui.nvim#main]                          | de740991c12411b663994b2860f1a4fd0937c130
 [nvim@nvim-cmp][]                    | [main][nvim@nvim-cmp#main]                          | b5311ab3ed9c846b585c0c15b7559be131ec4be9
 [nvim@nvim-colorizer.lua][]          | [master][nvim@nvim-colorizer.lua#master]            | 4acf88d31b3a7a1a7f31e9c30bf2b23c6313abdb
 [nvim@nvim-dap][]                    | [master][nvim@nvim-dap#master]                      | 7367cec8e8f7a0b1e4566af9a7ef5959d11206a7
 [nvim@nvim-dap-python][]             | [master][nvim@nvim-dap-python#master]               | bfe572e4458e0ac876b9539a1e9f301c72db8ea0
 [nvim@nvim-dap-ui][]                 | [master][nvim@nvim-dap-ui#master]                   | cf91d5e2d07c72903d052f5207511bf7ecdb7122
 [nvim@nvim-dap-virtual-text][]       | [master][nvim@nvim-dap-virtual-text#master]         | fbdb48c2ed45f4a8293d0d483f7730d24467ccb6
 [nvim@nvim-lint][]                   | [master][nvim@nvim-lint#master]                     | 335a6044be16d7701001059cba9baa36fbeef422
 [nvim@nvim-lspconfig][]              | [master][nvim@nvim-lspconfig#master]                | db8fef885009fdec0daeff3e5dda92e1f539611e
 [nvim@nvim-nio][]                    | [master][nvim@nvim-nio#master]                      | 21f5324bfac14e22ba26553caf69ec76ae8a7662
 [nvim@nvim-notify][]                 | [master][nvim@nvim-notify#master]                   | a22f5d7ac511c2df2fd3290a9f04c48d5a822e2e
 [nvim@nvim-snippets][]               | [main][nvim@nvim-snippets#main]                     | 56b4052f71220144689caaa2e5b66222ba5661eb
 [nvim@telescope.nvim][]              | [master][nvim@telescope.nvim#master]                | b4da76be54691e854d3e0e02c36b0245f945c2c7
 [nvim@nvim-tmux-navigation][]        | [main][nvim@nvim-tmux-navigation#main]              | 4898c98702954439233fdaf764c39636681e2861
 [nvim@nvim-treesitter][]             | [main][nvim@nvim-treesitter#main]                   | 77362027f7aa850c87419fd571151e76b0b342a6
 [nvim@nvim-treesitter-context][]     | [master][nvim@nvim-treesitter-context#master]       | 41847d3dafb5004464708a3db06b14f12bde548a
 [nvim@nvim-treesitter-textobjects][] | [main][nvim@nvim-treesitter-textobjects#main]       | 1b2d85d3de6114c4bcea89ffb2cd1ce9e3a19931
 [nvim@nvim-window-picker][]          | [main][nvim@nvim-window-picker#main]                | 41cfaa428577c53552200a404ae9b3a0b5719706
 [nvim@plenary.nvim][]                | [master][nvim@plenary.nvim#master]                  | b9fd5226c2f76c951fc8ed5923d85e4de065e509
 [nvim@render-markdown.nvim][]        | [main][nvim@render-markdown.nvim#main]              | 9ab9dade85d8c7d411cc89b592028da3d1b7955a
 [nvim@schema-store.nvim][]           | [main][nvim@schema-store.nvim#main]                 | c8af3f44c68757344b4dcb82e2ac48892b1be765
 [nvim@smear-cursor.nvim][]           | [main][nvim@smear-cursor.nvim#main]                 | 3879bc2eb4a2a07a8637256fe33cc4484a23a813
 [nvim@trouble.nvim][]                | [main][nvim@trouble.nvim#main]                      | f176232e7759c4f8abd923c21e3e5a5c76cd6837
 [nvim@vim-illuminate][]              | [master][nvim@vim-illuminate#master]                | b5713e6ca3f627b46968386d6d3f24d374d3cb17
 [nvim@which-key.nvim][]              | [main][nvim@which-key.nvim#main]                    | 904308e6885bbb7b60714c80ab3daf0c071c1492

[nvim@aerial.nvim]: https://github.com/guanghechen/mirror/tree/nvim@aerial.nvim
[nvim@avante.nvim]: https://github.com/guanghechen/mirror/tree/nvim@avante.nvim
[nvim@blink.cmp]: https://github.com/guanghechen/mirror/tree/nvim@blink.cmp
[nvim@blink.compat]: https://github.com/guanghechen/mirror/tree/nvim@blink.compat
[nvim@blink.pairs]: https://github.com/guanghechen/mirror/tree/nvim@blink.pairs
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
[nvim@mini.surround]: https://github.com/guanghechen/mirror/tree/nvim@mini.surround
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
[nvim@smear-cursor.nvim]: https://github.com/guanghechen/mirror/tree/nvim@smear-cursor.nvim
[nvim@trouble.nvim]: https://github.com/guanghechen/mirror/tree/nvim@trouble.nvim
[nvim@vim-illuminate]: https://github.com/guanghechen/mirror/tree/nvim@vim-illuminate
[nvim@which-key.nvim]: https://github.com/guanghechen/mirror/tree/nvim@which-key.nvim

[nvim@aerial.nvim#master]: https://github.com/stevearc/aerial.nvim/tree/master
[nvim@avante.nvim#main]: https://github.com/yetone/avante.nvim/tree/main
[nvim@blink.cmp#main]: https://github.com/Saghen/blink.cmp/tree/main
[nvim@blink.compat#main]: https://github.com/Saghen/blink.compat/tree/main
[nvim@blink.pairs#main]: https://github.com/Saghen/blink.pairs/tree/main
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
[nvim@mini.surround#main]: https://github.com/nvim-mini/mini.surround/tree/main
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
[nvim@smear-cursor.nvim#main]: https://github.com/sphamba/smear-cursor.nvim/tree/main
[nvim@trouble.nvim#main]: https://github.com/folke/trouble.nvim/tree/main
[nvim@vim-illuminate#master]: https://github.com/RRethy/vim-illuminate/tree/master
[nvim@which-key.nvim#main]: https://github.com/folke/which-key.nvim/tree/main