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
 [nvim@aerial.nvim][]                 | [master][nvim@aerial.nvim#master]                   | 4c959cf65c5420d54b24b61a77b681dcfca0bc57
 [nvim@avante.nvim][]                 | [main][nvim@avante.nvim#main]                       | 396840a152be82354984b16f9a22cb425d0840d1
 [nvim@cmp-buffer][]                  | [main][nvim@cmp-buffer#main]                        | 3022dbc9166796b644a841a02de8dd1cc1d311fa
 [nvim@cmp-luasnip][]                 | [master][nvim@cmp-luasnip#master]                   | 98d9cb5c2c38532bd9bdb481067b20fea8f32e90
 [nvim@cmp-nvim-lsp][]                | [main][nvim@cmp-nvim-lsp#main]                      | 99290b3ec1322070bcfb9e846450a46f6efa50f0
 [nvim@cmp-path][]                    | [main][nvim@cmp-path#main]                          | 91ff86cd9c29299a64f968ebb45846c485725f23
 [nvim@conform.nvim][]                | [master][nvim@conform.nvim#master]                  | 3c14c39d830cc4146782d6f58112eedb3c39c43a
 [nvim@copilot-cmp][]                 | [master][nvim@copilot-cmp#master]                   | 15fc12af3d0109fa76b60b5cffa1373697e261d1
 [nvim@copilot.lua][]                 | [master][nvim@copilot.lua#master]                   | 886ee73b6d464b2b3e3e6a7ff55ce87feac423a9
 [nvim@copilot-chat.nvim][]           | [main][nvim@copilot-chat.nvim#main]                 | 2ebe591cff06018e265263e71e1dbc4c5aa8281e
 [nvim@diffview.nvim][]               | [main][nvim@diffview.nvim#main]                     | 4516612fe98ff56ae0415a259ff6361a89419b0a
 [nvim@dressing.nvim][]               | [master][nvim@dressing.nvim#master]                 | 3a45525bb182730fe462325c99395529308f431e
 [nvim@flash.nvim][]                  | [main][nvim@flash.nvim#main]                        | 34c7be146a91fec3555c33fe89c7d643f6ef5cf1
 [nvim@friendly-snippets][]           | [main][nvim@friendly-snippets#main]                 | efff286dd74c22f731cdec26a70b46e5b203c619
 [nvim@gitsigns.nvim][]               | [main][nvim@gitsigns.nvim#main]                     | 632fda72df903255dc1683cd739dceaa7338128a
 [nvim@img-clip.nvim][]               | [main][nvim@img-clip.nvim#main]                     | 5ff183655ad98b5fc50c55c66540375bbd62438c
 [nvim@indent-blankline.nvim][]       | [master][nvim@indent-blankline.nvim#master]         | e10626f7fcd51ccd56d7ffc00883ba7e0aa28f78
 [nvim@lazy.nvim][]                   | [main][nvim@lazy.nvim#main]                         | d8f26efd456190241afd1b0f5235fe6fdba13d4a
 [nvim@luasnip.nvim][]                | [master][nvim@luasnip.nvim#master]                  | 33b06d72d220aa56a7ce80a0dd6f06c70cd82b9d
 [nvim@mason.nvim][]                  | [main][nvim@mason.nvim#main]                        | e2f7f9044ec30067bc11800a9e266664b88cda22
 [nvim@mason-lspconfig.nvim][]        | [main][nvim@mason-lspconfig.nvim#main]              | e942edf5c85b6a2ab74059ea566cac5b3e1514a4
 [nvim@mason-nvim-dap][]              | [main][nvim@mason-nvim-dap#main]                    | 8b9363d83b5d779813cdd2819b8308651cec2a09
 [nvim@mini.comment][]                | [main][nvim@mini.comment#main]                      | a56581c40c19fa26f2b39da72504398de3173c5a
 [nvim@mini.hipatterns][]             | [main][nvim@mini.hipatterns#main]                   | f34975103a38b3f608219a1324cdfc58ea660b8b
 [nvim@mini.icons][]                  | [main][nvim@mini.icons#main]                        | 910db5df9724d65371182948f921fce23c2c881e
 [nvim@mini.indentscope][]            | [main][nvim@mini.indentscope#main]                  | 613df2830d7faeae7483ba2e736683154b95921e
 [nvim@mini.pairs][]                  | [main][nvim@mini.pairs#main]                        | 7e834c5937d95364cc1740e20d673afe2d034cdb
 [nvim@mini.surround][]               | [main][nvim@mini.surround#main]                     | aa5e245829dd12d8ff0c96ef11da28681d6049aa
 [nvim@neo-tree.nvim][]               | [main][nvim@neo-tree.nvim#main]                     | 27abb114bcd7e9afec6fb15001b55c9cdb6c74a6
 [nvim@noice.nvim][]                  | [main][nvim@noice.nvim#main]                        | eaed6cc9c06aa2013b5255349e4f26a6b17ab70f
 [nvim@nui.nvim][]                    | [main][nvim@nui.nvim#main]                          | 53e907ffe5eedebdca1cd503b00aa8692068ca46
 [nvim@nvim-cmp][]                    | [main][nvim@nvim-cmp#main]                          | 8c82d0bd31299dbff7f8e780f5e06d2283de9678
 [nvim@nvim-colorizer.lua][]          | [master][nvim@nvim-colorizer.lua#master]            | 4acf88d31b3a7a1a7f31e9c30bf2b23c6313abdb
 [nvim@nvim-dap][]                    | [master][nvim@nvim-dap#master]                      | 99807078c5089ed30e0547aa4b52c5867933f426
 [nvim@nvim-dap-ui][]                 | [master][nvim@nvim-dap-ui#master]                   | 0d5c37a43bc039c42a0a9bf801e53f77adf06a24
 [nvim@nvim-dap-virtual-text][]       | [master][nvim@nvim-dap-virtual-text#master]         | df66808cd78b5a97576bbaeee95ed5ca385a9750
 [nvim@nvim-lint][]                   | [master][nvim@nvim-lint#master]                     | 789b7ada1b4f00e08d026dffde410dcfa6a0ba87
 [nvim@nvim-lspconfig][]              | [master][nvim@nvim-lspconfig#master]                | d1871c84b218931cc758dbbde1fec8e90c6d465c
 [nvim@nvim-nio][]                    | [master][nvim@nvim-nio#master]                      | 21f5324bfac14e22ba26553caf69ec76ae8a7662
 [nvim@nvim-notify][]                 | [master][nvim@nvim-notify#master]                   | 22f29093eae7785773ee9d543f8750348b1a195c
 [nvim@nvim-snippets][]               | [main][nvim@nvim-snippets#main]                     | 56b4052f71220144689caaa2e5b66222ba5661eb
 [nvim@nvim-treesitter][]             | [master][nvim@nvim-treesitter#master]               | 0c94de7e9792cf89c14a865ab819ad5c6e6a7f77
 [nvim@nvim-treesitter-context][]     | [master][nvim@nvim-treesitter-context#master]       | bece284c5322ddf6946fa4bdc383a2bc033269d7
 [nvim@nvim-treesitter-textobjects][] | [master][nvim@nvim-treesitter-textobjects#master]   | ad8f0a472148c3e0ae9851e26a722ee4e29b1595
 [nvim@nvim-window-picker][]          | [main][nvim@nvim-window-picker#main]                | 41cfaa428577c53552200a404ae9b3a0b5719706
 [nvim@plenary.nvim][]                | [master][nvim@plenary.nvim#master]                  | 3707cdb1e43f5cea73afb6037e6494e7ce847a66
 [nvim@render-markdown.nvim][]        | [main][nvim@render-markdown.nvim#main]              | ad055861d17afe058bd835e82292e14a64b51b1d
 [nvim@smear-cursor.nvim][]           | [main][nvim@smear-cursor.nvim#main]                 | 791bd7871e612b17520cbde19ddede306d83ef11
 [nvim@trouble.nvim][]                | [main][nvim@trouble.nvim#main]                      | 50481f414bd3c1a40122c1d759d7e424d5fafe84
 [nvim@vim-illuminate][]              | [master][nvim@vim-illuminate#master]                | 5eeb7951fc630682c322e88a9bbdae5c224ff0aa
 [nvim@which-key.nvim][]              | [main][nvim@which-key.nvim#main]                    | 1f8d414f61e0b05958c342df9b6a4c89ce268766

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
[nvim@smear-cursor.nvim#main]: https://github.com/sphamba/smear-cursor.nvim/tree/main
[nvim@trouble.nvim#main]: https://github.com/folke/trouble.nvim/tree/main
[nvim@vim-illuminate#master]: https://github.com/RRethy/vim-illuminate/tree/master
[nvim@which-key.nvim#main]: https://github.com/folke/which-key.nvim/tree/main