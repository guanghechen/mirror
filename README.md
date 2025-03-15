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
 [nvim@aerial.nvim][]                 | [master][nvim@aerial.nvim#master]                   | 2204cf08791449a6a2fd2ef187a29112eeefd989
 [nvim@avante.nvim][]                 | [main][nvim@avante.nvim#main]                       | f60f150a21e2a32f1b0ee194abd7f2be3bab92db
 [nvim@cmp-buffer][]                  | [main][nvim@cmp-buffer#main]                        | 3022dbc9166796b644a841a02de8dd1cc1d311fa
 [nvim@cmp-luasnip][]                 | [master][nvim@cmp-luasnip#master]                   | 98d9cb5c2c38532bd9bdb481067b20fea8f32e90
 [nvim@cmp-nvim-lsp][]                | [main][nvim@cmp-nvim-lsp#main]                      | 99290b3ec1322070bcfb9e846450a46f6efa50f0
 [nvim@cmp-path][]                    | [main][nvim@cmp-path#main]                          | 91ff86cd9c29299a64f968ebb45846c485725f23
 [nvim@conform.nvim][]                | [master][nvim@conform.nvim#master]                  | db8a4a9edb217067b1d7a2e0362c74bfe9cc944d
 [nvim@copilot-cmp][]                 | [master][nvim@copilot-cmp#master]                   | 15fc12af3d0109fa76b60b5cffa1373697e261d1
 [nvim@copilot.lua][]                 | [master][nvim@copilot.lua#master]                   | 30321e33b03cb924fdcd6a806a0dc6fa0b0eafb9
 [nvim@copilot-chat.nvim][]           | [main][nvim@copilot-chat.nvim#main]                 | 96f23809efdcc99b5eb1c8a8ee498de5e53bc944
 [nvim@diffview.nvim][]               | [main][nvim@diffview.nvim#main]                     | 4516612fe98ff56ae0415a259ff6361a89419b0a
 [nvim@dressing.nvim][]               | [master][nvim@dressing.nvim#master]                 | 3a45525bb182730fe462325c99395529308f431e
 [nvim@flash.nvim][]                  | [main][nvim@flash.nvim#main]                        | 3c942666f115e2811e959eabbdd361a025db8b63
 [nvim@friendly-snippets][]           | [main][nvim@friendly-snippets#main]                 | efff286dd74c22f731cdec26a70b46e5b203c619
 [nvim@gitsigns.nvim][]               | [main][nvim@gitsigns.nvim#main]                     | 011dc6718bcebdf92a5336bb0da79189c3afe621
 [nvim@img-clip.nvim][]               | [main][nvim@img-clip.nvim#main]                     | 5ff183655ad98b5fc50c55c66540375bbd62438c
 [nvim@indent-blankline.nvim][]       | [master][nvim@indent-blankline.nvim#master]         | e10626f7fcd51ccd56d7ffc00883ba7e0aa28f78
 [nvim@lazy.nvim][]                   | [main][nvim@lazy.nvim#main]                         | 6c3bda4aca61a13a9c63f1c1d1b16b9d3be90d7a
 [nvim@luasnip.nvim][]                | [master][nvim@luasnip.nvim#master]                  | 33b06d72d220aa56a7ce80a0dd6f06c70cd82b9d
 [nvim@mason.nvim][]                  | [main][nvim@mason.nvim#main]                        | fc98833b6da5de5a9c5b1446ac541577059555be
 [nvim@mason-lspconfig.nvim][]        | [main][nvim@mason-lspconfig.nvim#main]              | 1a31f824b9cd5bc6f342fc29e9a53b60d74af245
 [nvim@mason-nvim-dap][]              | [main][nvim@mason-nvim-dap#main]                    | 09220b99d63d5363f219daa2785242ee5fddba7f
 [nvim@mini.ai][]                     | [main][nvim@mini.ai#main]                           | 6e01c0e5a15554852546fac9853960780ac52ed4
 [nvim@mini.comment][]                | [main][nvim@mini.comment#main]                      | a56581c40c19fa26f2b39da72504398de3173c5a
 [nvim@mini.hipatterns][]             | [main][nvim@mini.hipatterns#main]                   | fbf1e2195fdd65cf1bc970316c28098257728868
 [nvim@mini.icons][]                  | [main][nvim@mini.icons#main]                        | ec61af6e606fc89ee3b1d8f2f20166a3ca917a36
 [nvim@mini.indentscope][]            | [main][nvim@mini.indentscope#main]                  | 8ce41a77eed7f4121c83c67fda5e2e86af999e6d
 [nvim@mini.pairs][]                  | [main][nvim@mini.pairs#main]                        | 1a3e73649c0eaef2f6c48ce1e761c6f0a7c11918
 [nvim@mini.surround][]               | [main][nvim@mini.surround#main]                     | f90069c7441a5fb04c3de42eacf93e16b64dd3eb
 [nvim@neo-tree.nvim][]               | [main][nvim@neo-tree.nvim#main]                     | d9544c74ec43cca0564fdc334c116fbe0be8a807
 [nvim@noice.nvim][]                  | [main][nvim@noice.nvim#main]                        | 0427460c2d7f673ad60eb02b35f5e9926cf67c59
 [nvim@nui.nvim][]                    | [main][nvim@nui.nvim#main]                          | 8d3bce9764e627b62b07424e0df77f680d47ffdb
 [nvim@nvim-cmp][]                    | [main][nvim@nvim-cmp#main]                          | 1e1900b0769324a9675ef85b38f99cca29e203b3
 [nvim@nvim-colorizer.lua][]          | [master][nvim@nvim-colorizer.lua#master]            | 4acf88d31b3a7a1a7f31e9c30bf2b23c6313abdb
 [nvim@nvim-dap][]                    | [master][nvim@nvim-dap#master]                      | a720d4966f758ab22e8ec28812b6df90a53e0f02
 [nvim@nvim-dap-python][]             | [master][nvim@nvim-dap-python#master]               | 34282820bb713b9a5fdb120ae8dd85c2b3f49b51
 [nvim@nvim-dap-ui][]                 | [master][nvim@nvim-dap-ui#master]                   | bc81f8d3440aede116f821114547a476b082b319
 [nvim@nvim-dap-virtual-text][]       | [master][nvim@nvim-dap-virtual-text#master]         | df66808cd78b5a97576bbaeee95ed5ca385a9750
 [nvim@nvim-lint][]                   | [master][nvim@nvim-lint#master]                     | 6e9dd545a1af204c4022a8fcd99727ea41ffdcc8
 [nvim@nvim-lspconfig][]              | [master][nvim@nvim-lspconfig#master]                | 8a1529e46eef5efc86c34c8d9bdd313abc2ecba0
 [nvim@nvim-nio][]                    | [master][nvim@nvim-nio#master]                      | 21f5324bfac14e22ba26553caf69ec76ae8a7662
 [nvim@nvim-notify][]                 | [master][nvim@nvim-notify#master]                   | 22f29093eae7785773ee9d543f8750348b1a195c
 [nvim@nvim-snippets][]               | [main][nvim@nvim-snippets#main]                     | 56b4052f71220144689caaa2e5b66222ba5661eb
 [nvim@nvim-treesitter][]             | [master][nvim@nvim-treesitter#master]               | 2586ea65faf45dcf1caf8d34510d50bb545c215a
 [nvim@nvim-treesitter-context][]     | [master][nvim@nvim-treesitter-context#master]       | 129fcc94fa986692926366e940a46f00d2a4abbe
 [nvim@nvim-treesitter-textobjects][] | [master][nvim@nvim-treesitter-textobjects#master]   | 143856b1cee509a190cc8c17ddb0638002171235
 [nvim@nvim-window-picker][]          | [main][nvim@nvim-window-picker#main]                | 41cfaa428577c53552200a404ae9b3a0b5719706
 [nvim@plenary.nvim][]                | [master][nvim@plenary.nvim#master]                  | 857c5ac632080dba10aae49dba902ce3abf91b35
 [nvim@render-markdown.nvim][]        | [main][nvim@render-markdown.nvim#main]              | 08e1fa4e281e48ee4aa892428de9fb91e66edca6
 [nvim@schema-store.nvim][]           | [main][nvim@schema-store.nvim#main]                 | 56d8ed0fa1516242085ba5e95d7f49fad50d5754
 [nvim@smear-cursor.nvim][]           | [main][nvim@smear-cursor.nvim#main]                 | 81638007bf7bbe79a78a3bfcbe8c640ec83344c0
 [nvim@trouble.nvim][]                | [main][nvim@trouble.nvim#main]                      | 85bedb7eb7fa331a2ccbecb9202d8abba64d37b3
 [nvim@vim-illuminate][]              | [master][nvim@vim-illuminate#master]                | b5713e6ca3f627b46968386d6d3f24d374d3cb17
 [nvim@which-key.nvim][]              | [main][nvim@which-key.nvim#main]                    | 370ec46f710e058c9c1646273e6b225acf47cbed

[nvim@aerial.nvim]: https://github.com/guanghechen/mirror/tree/nvim@aerial.nvim
[nvim@avante.nvim]: https://github.com/guanghechen/mirror/tree/nvim@avante.nvim
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
[nvim@mason.nvim#main]: https://github.com/williamboman/mason.nvim/tree/main
[nvim@mason-lspconfig.nvim#main]: https://github.com/williamboman/mason-lspconfig.nvim/tree/main
[nvim@mason-nvim-dap#main]: https://github.com/jay-babu/mason-nvim-dap.nvim/tree/main
[nvim@mini.ai#main]: https://github.com/echasnovski/mini.ai/tree/main
[nvim@mini.comment#main]: https://github.com/echasnovski/mini.comment/tree/main
[nvim@mini.hipatterns#main]: https://github.com/echasnovski/mini.hipatterns/tree/main
[nvim@mini.icons#main]: https://github.com/echasnovski/mini.icons/tree/main
[nvim@mini.indentscope#main]: https://github.com/echasnovski/mini.indentscope/tree/main
[nvim@mini.pairs#main]: https://github.com/echasnovski/mini.pairs/tree/main
[nvim@mini.surround#main]: https://github.com/echasnovski/mini.surround/tree/main
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
[nvim@nvim-treesitter#master]: https://github.com/nvim-treesitter/nvim-treesitter/tree/master
[nvim@nvim-treesitter-context#master]: https://github.com/nvim-treesitter/nvim-treesitter-context/tree/master
[nvim@nvim-treesitter-textobjects#master]: https://github.com/nvim-treesitter/nvim-treesitter-textobjects/tree/master
[nvim@nvim-window-picker#main]: https://github.com/s1n7ax/nvim-window-picker/tree/main
[nvim@plenary.nvim#master]: https://github.com/nvim-lua/plenary.nvim/tree/master
[nvim@render-markdown.nvim#main]: https://github.com/MeanderingProgrammer/render-markdown.nvim/tree/main
[nvim@schema-store.nvim#main]: https://github.com/b0o/SchemaStore.nvim/tree/main
[nvim@smear-cursor.nvim#main]: https://github.com/sphamba/smear-cursor.nvim/tree/main
[nvim@trouble.nvim#main]: https://github.com/folke/trouble.nvim/tree/main
[nvim@vim-illuminate#master]: https://github.com/RRethy/vim-illuminate/tree/master
[nvim@which-key.nvim#main]: https://github.com/folke/which-key.nvim/tree/main