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
 [nvim@conform.nvim][]                | [master][nvim@conform.nvim#master]                  | 4dd429fe3f47077f4e50cdaf03f7877ce9b213e0
 [nvim@copilot-cmp][]                 | [master][nvim@copilot-cmp#master]                   | b6e5286b3d74b04256d0a7e3bd2908eabec34b44
 [nvim@copilot.lua][]                 | [master][nvim@copilot.lua#master]                   | f8d8d872bb319f640d5177dad5fbf01f7a16d7d0
 [nvim@diffview.nvim][]               | [main][nvim@diffview.nvim#main]                     | 4516612fe98ff56ae0415a259ff6361a89419b0a
 [nvim@dressing.nvim][]               | [master][nvim@dressing.nvim#master]                 | 1b7921eecc65af1baf8ac1dc06f0794934cbcfb2
 [nvim@flash.nvim][]                  | [main][nvim@flash.nvim#main]                        | 34c7be146a91fec3555c33fe89c7d643f6ef5cf1
 [nvim@friendly-snippets][]           | [main][nvim@friendly-snippets#main]                 | de8fce94985873666bd9712ea3e49ee17aadb1ed
 [nvim@gitsigns.nvim][]               | [main][nvim@gitsigns.nvim#main]                     | 7c27a30450130cd59c4994a6755e3c5d74d83e76
 [nvim@indent-blankline.nvim][]       | [master][nvim@indent-blankline.nvim#master]         | 04e44b09ee3ff189c69ab082edac1ef7ae2e256c
 [nvim@lazy.nvim][]                   | [main][nvim@lazy.nvim#main]                         | cf8ecc2c5e4332760431a33534240b0cbc6680ab
 [nvim@mason-lspconfig.nvim][]        | [main][nvim@mason-lspconfig.nvim#main]              | 4d0e5b49363cac187326998b96aa6a2884e0e89b
 [nvim@mason.nvim][]                  | [main][nvim@mason.nvim#main]                        | e2f7f9044ec30067bc11800a9e266664b88cda22
 [nvim@mini.comment][]                | [main][nvim@mini.comment#main]                      | a56581c40c19fa26f2b39da72504398de3173c5a
 [nvim@mini.hipatterns][]             | [main][nvim@mini.hipatterns#main]                   | 797cbdc893cdcc2f0fbc05a23b4dae238a1fb0ae
 [nvim@mini.icons][]                  | [main][nvim@mini.icons#main]                        | a2742459f0ee32806c2438ca06b4d8b331f3f4d4
 [nvim@mini.indentscope][]            | [main][nvim@mini.indentscope#main]                  | da9af64649e114aa79480c238fd23f6524bc0903
 [nvim@mini.pairs][]                  | [main][nvim@mini.pairs#main]                        | 7e834c5937d95364cc1740e20d673afe2d034cdb
 [nvim@mini.surround][]               | [main][nvim@mini.surround#main]                     | 48a9795c9d352c771e1ab5dedab6063c0a2df037
 [nvim@neo-tree.nvim][]               | [main][nvim@neo-tree.nvim#main]                     | a77af2e764c5ed4038d27d1c463fa49cd4794e07
 [nvim@noice.nvim][]                  | [main][nvim@noice.nvim#main]                        | 3cd84d402e0b5a56cf06b6c7f644a3cc9a3956a6
 [nvim@nui.nvim][]                    | [main][nvim@nui.nvim#main]                          | b58e2bfda5cea347c9d58b7f11cf3012c7b3953f
 [nvim@nvim-cmp][]                    | [main][nvim@nvim-cmp#main]                          | 29fb4854573355792df9e156cb779f0d31308796
 [nvim@nvim-colorizer.lua][]          | [master][nvim@nvim-colorizer.lua#master]            | 0671e0eabc6842676d3310370e8fae4e1c51d7f9
 [nvim@nvim-lspconfig][]              | [master][nvim@nvim-lspconfig#master]                | 54617a18f4cf46f0c2f6d024fa6feb7515fe036d
 [nvim@nvim-notify][]                 | [master][nvim@nvim-notify#master]                   | fbef5d32be8466dd76544a257d3f3dce20082a07
 [nvim@nvim-snippets][]               | [main][nvim@nvim-snippets#main]                     | 56b4052f71220144689caaa2e5b66222ba5661eb
 [nvim@nvim-treesitter][]             | [master][nvim@nvim-treesitter#master]               | b065b59196edb10a7c29bfbed88cc225b7e3de37
 [nvim@nvim-treesitter-context][]     | [master][nvim@nvim-treesitter-context#master]       | a2a334900d3643de585ac5c6140b03403454124f
 [nvim@nvim-treesitter-textobjects][] | [master][nvim@nvim-treesitter-textobjects#master]   | 3e450cd85243da99dc23ebbf14f9c70e9a0c26a4
 [nvim@nvim-window-picker][]          | [main][nvim@nvim-window-picker#main]                | 41cfaa428577c53552200a404ae9b3a0b5719706
 [nvim@plenary.nvim][]                | [master][nvim@plenary.nvim#master]                  | 2d9b06177a975543726ce5c73fca176cedbffe9d
 [nvim@trouble.nvim][]                | [main][nvim@trouble.nvim#main]                      | 2f3b537f2207ce32f4459f9d56746ee013b5e01b
 [nvim@vim-illuminate][]              | [master][nvim@vim-illuminate#master]                | 5eeb7951fc630682c322e88a9bbdae5c224ff0aa
 [nvim@which-key.nvim][]              | [main][nvim@which-key.nvim#main]                    | 8badb359f7ab8711e2575ef75dfe6fbbd87e4821

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