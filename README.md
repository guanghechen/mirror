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
 [nvim@cmp-buffer][]                  | [main][nvim@cmp-buffer#main]                        | 3022dbc9166796b644a841a02de8dd1cc1d311fa
 [nvim@cmp-nvim-lsp][]                | [main][nvim@cmp-nvim-lsp#main]                      | 39e2eda76828d88b773cc27a3f61d2ad782c922d
 [nvim@cmp-path][]                    | [main][nvim@cmp-path#main]                          | 91ff86cd9c29299a64f968ebb45846c485725f23
 [nvim@conform.nvim][]                | [master][nvim@conform.nvim#master]                  | 46c107ad0e7d83b5a7091112ec2994c847577d32
 [nvim@copilot-cmp][]                 | [master][nvim@copilot-cmp#master]                   | b6e5286b3d74b04256d0a7e3bd2908eabec34b44
 [nvim@copilot.lua][]                 | [master][nvim@copilot.lua#master]                   | 1a237cf50372830a61d92b0adf00d3b23882e0e1
 [nvim@diffview.nvim][]               | [main][nvim@diffview.nvim#main]                     | 4516612fe98ff56ae0415a259ff6361a89419b0a
 [nvim@dressing.nvim][]               | [master][nvim@dressing.nvim#master]                 | c5775a888adbc50652cb370073fcfec963eca93e
 [nvim@flash.nvim][]                  | [main][nvim@flash.nvim#main]                        | 34c7be146a91fec3555c33fe89c7d643f6ef5cf1
 [nvim@friendly-snippets][]           | [main][nvim@friendly-snippets#main]                 | 00ebcaa159e817150bd83bfe2d51fa3b3377d5c4
 [nvim@gitsigns.nvim][]               | [main][nvim@gitsigns.nvim#main]                     | 1ef74b546732f185d0f806860fa5404df7614f28
 [nvim@indent-blankline.nvim][]       | [master][nvim@indent-blankline.nvim#master]         | 18603eb949eba08300799f64027af11ef922283f
 [nvim@lazy.nvim][]                   | [main][nvim@lazy.nvim#main]                         | 48b52b5cfcf8f88ed0aff8fde573a5cc20b1306d
 [nvim@mason-lspconfig.nvim][]        | [main][nvim@mason-lspconfig.nvim#main]              | 25c11854aa25558ee6c03432edfa0df0217324be
 [nvim@mason.nvim][]                  | [main][nvim@mason.nvim#main]                        | e2f7f9044ec30067bc11800a9e266664b88cda22
 [nvim@mini.comment][]                | [main][nvim@mini.comment#main]                      | 03c13e37318bdb18481311c0ac1adc9ed731caf1
 [nvim@mini.icons][]                  | [main][nvim@mini.icons#main]                        | 2d89252993fec829b24720097a687412d10f6c85
 [nvim@mini.indentscope][]            | [main][nvim@mini.indentscope#main]                  | da9af64649e114aa79480c238fd23f6524bc0903
 [nvim@mini.pairs][]                  | [main][nvim@mini.pairs#main]                        | e543c760edc5e746e5b6cbd02c066c17ead3ef16
 [nvim@mini.surround][]               | [main][nvim@mini.surround#main]                     | 0e67c4bc147f2a15cee94e7c94dcc0e115b9f55e
 [nvim@neo-tree.nvim][]               | [main][nvim@neo-tree.nvim#main]                     | 0774fa2085c62a147fcc7b56f0ac37053cc80217
 [nvim@noice.nvim][]                  | [main][nvim@noice.nvim#main]                        | 448bb9c524a7601035449210838e374a30153172
 [nvim@nui.nvim][]                    | [main][nvim@nui.nvim#main]                          | 61574ce6e60c815b0a0c4b5655b8486ba58089a1
 [nvim@nvim-cmp][]                    | [main][nvim@nvim-cmp#main]                          | ae644feb7b67bf1ce4260c231d1d4300b19c6f30
 [nvim@nvim-colorizer.lua][]          | [master][nvim@nvim-colorizer.lua#master]            | 0671e0eabc6842676d3310370e8fae4e1c51d7f9
 [nvim@nvim-lspconfig][]              | [master][nvim@nvim-lspconfig#master]                | d88ae6623fef09251e3aa20001bb761686eae730
 [nvim@nvim-notify][]                 | [master][nvim@nvim-notify#master]                   | d333b6f167900f6d9d42a59005d82919830626bf
 [nvim@nvim-snippets][]               | [main][nvim@nvim-snippets#main]                     | 56b4052f71220144689caaa2e5b66222ba5661eb
 [nvim@nvim-treesitter][]             | [master][nvim@nvim-treesitter#master]               | b6a6d8997c46dc15682020ce4fddc5a89ee1ac0d
 [nvim@nvim-treesitter-context][]     | [master][nvim@nvim-treesitter-context#master]       | e6cc783b74606d97ca9eff6494e3f5c2ca603a50
 [nvim@nvim-treesitter-textobjects][] | [master][nvim@nvim-treesitter-textobjects#master]   | bf8d2ad35d1d1a687eae6c065c3d524f7ab61b23
 [nvim@nvim-window-picker][]          | [main][nvim@nvim-window-picker#main]                | 41cfaa428577c53552200a404ae9b3a0b5719706
 [nvim@plenary.nvim][]                | [master][nvim@plenary.nvim#master]                  | ec289423a1693aeae6cd0d503bac2856af74edaa
 [nvim@trouble.nvim][]                | [main][nvim@trouble.nvim#main]                      | 6efc446226679fda0547c0fd6a7892fd5f5b15d8
 [nvim@vim-illuminate][]              | [master][nvim@vim-illuminate#master]                | 5eeb7951fc630682c322e88a9bbdae5c224ff0aa
 [nvim@which-key.nvim][]              | [main][nvim@which-key.nvim#main]                    | bfec3d6bc0a9b0b2cb11644642f78c2c3915eef0

[nvim@cmp-buffer]: https://github.com/guanghechen/mirror/tree/nvim@cmp-buffer
[nvim@cmp-nvim-lsp]: https://github.com/guanghechen/mirror/tree/nvim@cmp-nvim-lsp
[nvim@cmp-path]: https://github.com/guanghechen/mirror/tree/nvim@cmp-path
[nvim@conform.nvim]: https://github.com/guanghechen/mirror/tree/nvim@conform.nvim
[nvim@copilot-cmp]: https://github.com/guanghechen/mirror/tree/nvim@copilot-cmp
[nvim@copilot.lua]: https://github.com/guanghechen/mirror/tree/nvim@copilot.lua
[nvim@diffview.nvim]: https://github.com/guanghechen/mirror/tree/nvim@diffview.nvim
[nvim@dressing.nvim]: https://github.com/guanghechen/mirror/tree/nvim@dressing.nvim
[nvim@flash.nvim]: https://github.com/guanghechen/mirror/tree/nvim@flash.nvim
[nvim@friendly-snippets]: https://github.com/guanghechen/mirror/tree/nvim@friendly-snippets
[nvim@gitsigns.nvim]: https://github.com/guanghechen/mirror/tree/nvim@gitsigns.nvim
[nvim@indent-blankline.nvim]: https://github.com/guanghechen/mirror/tree/nvim@indent-blankline.nvim
[nvim@lazy.nvim]: https://github.com/guanghechen/mirror/tree/nvim@lazy.nvim
[nvim@mason-lspconfig.nvim]: https://github.com/guanghechen/mirror/tree/nvim@mason-lspconfig.nvim
[nvim@mason.nvim]: https://github.com/guanghechen/mirror/tree/nvim@mason.nvim
[nvim@mini.comment]: https://github.com/guanghechen/mirror/tree/nvim@mini.comment
[nvim@mini.icons]: https://github.com/guanghechen/mirror/tree/nvim@mini.icons
[nvim@mini.indentscope]: https://github.com/guanghechen/mirror/tree/nvim@mini.indentscope
[nvim@mini.pairs]: https://github.com/guanghechen/mirror/tree/nvim@mini.pairs
[nvim@mini.surround]: https://github.com/guanghechen/mirror/tree/nvim@mini.surround
[nvim@neo-tree.nvim]: https://github.com/guanghechen/mirror/tree/nvim@neo-tree.nvim
[nvim@noice.nvim]: https://github.com/guanghechen/mirror/tree/nvim@noice.nvim
[nvim@nui.nvim]: https://github.com/guanghechen/mirror/tree/nvim@nui.nvim
[nvim@nvim-cmp]: https://github.com/guanghechen/mirror/tree/nvim@nvim-cmp
[nvim@nvim-colorizer.lua]: https://github.com/guanghechen/mirror/tree/nvim@nvim-colorizer.lua
[nvim@nvim-lspconfig]: https://github.com/guanghechen/mirror/tree/nvim@nvim-lspconfig
[nvim@nvim-notify]: https://github.com/guanghechen/mirror/tree/nvim@nvim-notify
[nvim@nvim-snippets]: https://github.com/guanghechen/mirror/tree/nvim@nvim-snippets
[nvim@nvim-treesitter]: https://github.com/guanghechen/mirror/tree/nvim@nvim-treesitter
[nvim@nvim-treesitter-context]: https://github.com/guanghechen/mirror/tree/nvim@nvim-treesitter-context
[nvim@nvim-treesitter-textobjects]: https://github.com/guanghechen/mirror/tree/nvim@nvim-treesitter-textobjects
[nvim@nvim-window-picker]: https://github.com/guanghechen/mirror/tree/nvim@nvim-window-picker
[nvim@plenary.nvim]: https://github.com/guanghechen/mirror/tree/nvim@plenary.nvim
[nvim@trouble.nvim]: https://github.com/guanghechen/mirror/tree/nvim@trouble.nvim
[nvim@vim-illuminate]: https://github.com/guanghechen/mirror/tree/nvim@vim-illuminate
[nvim@which-key.nvim]: https://github.com/guanghechen/mirror/tree/nvim@which-key.nvim

[nvim@cmp-buffer#main]: https://github.com/hrsh7th/cmp-buffer/tree/main
[nvim@cmp-nvim-lsp#main]: https://github.com/hrsh7th/cmp-nvim-lsp/tree/main
[nvim@cmp-path#main]: https://github.com/hrsh7th/cmp-path/tree/main
[nvim@conform.nvim#master]: https://github.com/stevearc/conform.nvim/tree/master
[nvim@copilot-cmp#master]: https://github.com/zbirenbaum/copilot-cmp/tree/master
[nvim@copilot.lua#master]: https://github.com/zbirenbaum/copilot.lua/tree/master
[nvim@diffview.nvim#main]: https://github.com/sindrets/diffview.nvim/tree/main
[nvim@dressing.nvim#master]: https://github.com/stevearc/dressing.nvim/tree/master
[nvim@flash.nvim#main]: https://github.com/folke/flash.nvim/tree/main
[nvim@friendly-snippets#main]: https://github.com/rafamadriz/friendly-snippets/tree/main
[nvim@gitsigns.nvim#main]: https://github.com/lewis6991/gitsigns.nvim/tree/main
[nvim@indent-blankline.nvim#master]: https://github.com/lukas-reineke/indent-blankline.nvim/tree/master
[nvim@lazy.nvim#main]: https://github.com/folke/lazy.nvim/tree/main
[nvim@mason-lspconfig.nvim#main]: https://github.com/williamboman/mason-lspconfig.nvim/tree/main
[nvim@mason.nvim#main]: https://github.com/williamboman/mason.nvim/tree/main
[nvim@mini.comment#main]: https://github.com/echasnovski/mini.comment/tree/main
[nvim@mini.icons#main]: https://github.com/echasnovski/mini.icons/tree/main
[nvim@mini.indentscope#main]: https://github.com/echasnovski/mini.indentscope/tree/main
[nvim@mini.pairs#main]: https://github.com/echasnovski/mini.pairs/tree/main
[nvim@mini.surround#main]: https://github.com/echasnovski/mini.surround/tree/main
[nvim@neo-tree.nvim#main]: https://github.com/nvim-neo-tree/neo-tree.nvim/tree/main
[nvim@noice.nvim#main]: https://github.com/folke/noice.nvim/tree/main
[nvim@nui.nvim#main]: https://github.com/MunifTanjim/nui.nvim/tree/main
[nvim@nvim-cmp#main]: https://github.com/hrsh7th/nvim-cmp/tree/main
[nvim@nvim-colorizer.lua#master]: https://github.com/NvChad/nvim-colorizer.lua/tree/master
[nvim@nvim-lspconfig#master]: https://github.com/neovim/nvim-lspconfig/tree/master
[nvim@nvim-notify#master]: https://github.com/rcarriga/nvim-notify/tree/master
[nvim@nvim-snippets#main]: https://github.com/garymjr/nvim-snippets/tree/main
[nvim@nvim-treesitter#master]: https://github.com/nvim-treesitter/nvim-treesitter/tree/master
[nvim@nvim-treesitter-context#master]: https://github.com/nvim-treesitter/nvim-treesitter-context/tree/master
[nvim@nvim-treesitter-textobjects#master]: https://github.com/nvim-treesitter/nvim-treesitter-textobjects/tree/master
[nvim@nvim-window-picker#main]: https://github.com/s1n7ax/nvim-window-picker/tree/main
[nvim@plenary.nvim#master]: https://github.com/nvim-lua/plenary.nvim/tree/master
[nvim@trouble.nvim#main]: https://github.com/folke/trouble.nvim/tree/main
[nvim@vim-illuminate#master]: https://github.com/RRethy/vim-illuminate/tree/master
[nvim@which-key.nvim#main]: https://github.com/folke/which-key.nvim/tree/main