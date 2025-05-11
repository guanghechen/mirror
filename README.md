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
 [nvim@aerial.nvim][]                 | [master][nvim@aerial.nvim#master]                   | 2e00d1d4248f08dddfceacb8d2996e51e13e00f6
 [nvim@avante.nvim][]                 | [main][nvim@avante.nvim#main]                       | adae032f5fbc611d59545792d3c5bb1c9ddc3fdb
 [nvim@blink.cmp][]                   | [main][nvim@blink.cmp#main]                         | 0b3619dc3760304fa88abc299b61da142b2723d2
 [nvim@blink.compat][]                | [main][nvim@blink.compat#main]                      | f1836ed7a07f8d082ff6c3fbae1e476ba2adee84
 [nvim@cmp-buffer][]                  | [main][nvim@cmp-buffer#main]                        | b74fab3656eea9de20a9b8116afa3cfc4ec09657
 [nvim@cmp-luasnip][]                 | [master][nvim@cmp-luasnip#master]                   | 98d9cb5c2c38532bd9bdb481067b20fea8f32e90
 [nvim@cmp-nvim-lsp][]                | [main][nvim@cmp-nvim-lsp#main]                      | a8912b88ce488f411177fc8aed358b04dc246d7b
 [nvim@cmp-path][]                    | [main][nvim@cmp-path#main]                          | c6635aae33a50d6010bf1aa756ac2398a2d54c32
 [nvim@conform.nvim][]                | [master][nvim@conform.nvim#master]                  | 374aaf384e2e841607b8e2fe63fa3ad01d111c91
 [nvim@copilot-cmp][]                 | [master][nvim@copilot-cmp#master]                   | 15fc12af3d0109fa76b60b5cffa1373697e261d1
 [nvim@copilot.lua][]                 | [master][nvim@copilot.lua#master]                   | 2fe34db04570f6c47db0b752ca421a49b7357c03
 [nvim@copilot-chat.nvim][]           | [main][nvim@copilot-chat.nvim#main]                 | 4dce4d2fc185a935024511811139b68e91b2d2a8
 [nvim@diffview.nvim][]               | [main][nvim@diffview.nvim#main]                     | 4516612fe98ff56ae0415a259ff6361a89419b0a
 [nvim@dressing.nvim][]               | [master][nvim@dressing.nvim#master]                 | 3a45525bb182730fe462325c99395529308f431e
 [nvim@flash.nvim][]                  | [main][nvim@flash.nvim#main]                        | 3c942666f115e2811e959eabbdd361a025db8b63
 [nvim@friendly-snippets][]           | [main][nvim@friendly-snippets#main]                 | 572f5660cf05f8cd8834e096d7b4c921ba18e175
 [nvim@gitsigns.nvim][]               | [main][nvim@gitsigns.nvim#main]                     | 43b0c856ae5f32a195d83f4a27fe21d63e6c966c
 [nvim@img-clip.nvim][]               | [main][nvim@img-clip.nvim#main]                     | 5ff183655ad98b5fc50c55c66540375bbd62438c
 [nvim@indent-blankline.nvim][]       | [master][nvim@indent-blankline.nvim#master]         | 005b56001b2cb30bfa61b7986bc50657816ba4ba
 [nvim@lazy.nvim][]                   | [main][nvim@lazy.nvim#main]                         | 6c3bda4aca61a13a9c63f1c1d1b16b9d3be90d7a
 [nvim@luasnip.nvim][]                | [master][nvim@luasnip.nvim#master]                  | 33b06d72d220aa56a7ce80a0dd6f06c70cd82b9d
 [nvim@mason.nvim][]                  | [main][nvim@mason.nvim#main]                        | 7c7318e8bae7e3536ef6b9e86b9e38e74f2e125e
 [nvim@mason-lspconfig.nvim][]        | [main][nvim@mason-lspconfig.nvim#main]              | d39a75bbce4b8aad5d627191ea915179c77c100f
 [nvim@mason-nvim-dap][]              | [main][nvim@mason-nvim-dap#main]                    | 09220b99d63d5363f219daa2785242ee5fddba7f
 [nvim@mini.ai][]                     | [main][nvim@mini.ai#main]                           | e139eb1101beb0250fea322f8c07a42f0f175688
 [nvim@mini.comment][]                | [main][nvim@mini.comment#main]                      | a56581c40c19fa26f2b39da72504398de3173c5a
 [nvim@mini.hipatterns][]             | [main][nvim@mini.hipatterns#main]                   | e5083df391171dc9d8172645606f8496d9443374
 [nvim@mini.icons][]                  | [main][nvim@mini.icons#main]                        | 397ed3807e96b59709ef3292f0a3e253d5c1dc0a
 [nvim@mini.indentscope][]            | [main][nvim@mini.indentscope#main]                  | 8af2569a7d7fd37300dfa760e44e71efbbf322fd
 [nvim@mini.pairs][]                  | [main][nvim@mini.pairs#main]                        | 69864a2efb36c030877421634487fd90db1e4298
 [nvim@mini.surround][]               | [main][nvim@mini.surround#main]                     | 5aab42fcdcf31fa010f012771eda5631c077840a
 [nvim@neo-tree.nvim][]               | [main][nvim@neo-tree.nvim#main]                     | 56f383aa157f1ff20a59154907cc5f9fe26e4db9
 [nvim@noice.nvim][]                  | [main][nvim@noice.nvim#main]                        | 0427460c2d7f673ad60eb02b35f5e9926cf67c59
 [nvim@nui.nvim][]                    | [main][nvim@nui.nvim#main]                          | f535005e6ad1016383f24e39559833759453564e
 [nvim@nvim-cmp][]                    | [main][nvim@nvim-cmp#main]                          | b5311ab3ed9c846b585c0c15b7559be131ec4be9
 [nvim@nvim-colorizer.lua][]          | [master][nvim@nvim-colorizer.lua#master]            | 4acf88d31b3a7a1a7f31e9c30bf2b23c6313abdb
 [nvim@nvim-dap][]                    | [master][nvim@nvim-dap#master]                      | 8df427aeba0a06c6577dc3ab82de3076964e3b8d
 [nvim@nvim-dap-python][]             | [master][nvim@nvim-dap-python#master]               | 34282820bb713b9a5fdb120ae8dd85c2b3f49b51
 [nvim@nvim-dap-ui][]                 | [master][nvim@nvim-dap-ui#master]                   | 73a26abf4941aa27da59820fd6b028ebcdbcf932
 [nvim@nvim-dap-virtual-text][]       | [master][nvim@nvim-dap-virtual-text#master]         | df66808cd78b5a97576bbaeee95ed5ca385a9750
 [nvim@nvim-lint][]                   | [master][nvim@nvim-lint#master]                     | 9dfb77ef6c5092a19502883c02dc5a02ec648729
 [nvim@nvim-lspconfig][]              | [master][nvim@nvim-lspconfig#master]                | 61e5109c8cf24807e4ae29813a3a82b31821dd45
 [nvim@nvim-nio][]                    | [master][nvim@nvim-nio#master]                      | 21f5324bfac14e22ba26553caf69ec76ae8a7662
 [nvim@nvim-notify][]                 | [master][nvim@nvim-notify#master]                   | b5825cf9ee881dd8e43309c93374ed5b87b7a896
 [nvim@nvim-snippets][]               | [main][nvim@nvim-snippets#main]                     | 56b4052f71220144689caaa2e5b66222ba5661eb
 [nvim@telescope.nvim][]              | [master][nvim@telescope.nvim#master]                | a4ed82509cecc56df1c7138920a1aeaf246c0ac5
 [nvim@nvim-tmux-navigation][]        | [main][nvim@nvim-tmux-navigation#main]              | 4898c98702954439233fdaf764c39636681e2861
 [nvim@nvim-treesitter][]             | [master][nvim@nvim-treesitter#master]               | 28d480e0624b259095e56f353ec911f9f2a0f404
 [nvim@nvim-treesitter-context][]     | [master][nvim@nvim-treesitter-context#master]       | 5c48b8ba1b0b7b25feb6e34e7eb293ea893aedc4
 [nvim@nvim-treesitter-textobjects][] | [master][nvim@nvim-treesitter-textobjects#master]   | 0e3be38005e9673d044e994b1e4b123adb040179
 [nvim@nvim-window-picker][]          | [main][nvim@nvim-window-picker#main]                | 41cfaa428577c53552200a404ae9b3a0b5719706
 [nvim@plenary.nvim][]                | [master][nvim@plenary.nvim#master]                  | 857c5ac632080dba10aae49dba902ce3abf91b35
 [nvim@render-markdown.nvim][]        | [main][nvim@render-markdown.nvim#main]              | 935c2c70c296d87ed1bcce9ce667c239c9c982b5
 [nvim@schema-store.nvim][]           | [main][nvim@schema-store.nvim#main]                 | df87d16fc4ea7c2c67cfc00b513861738693fe07
 [nvim@smear-cursor.nvim][]           | [main][nvim@smear-cursor.nvim#main]                 | 3879bc2eb4a2a07a8637256fe33cc4484a23a813
 [nvim@trouble.nvim][]                | [main][nvim@trouble.nvim#main]                      | 85bedb7eb7fa331a2ccbecb9202d8abba64d37b3
 [nvim@vim-illuminate][]              | [master][nvim@vim-illuminate#master]                | b5713e6ca3f627b46968386d6d3f24d374d3cb17
 [nvim@which-key.nvim][]              | [main][nvim@which-key.nvim#main]                    | 370ec46f710e058c9c1646273e6b225acf47cbed

[nvim@aerial.nvim]: https://github.com/guanghechen/mirror/tree/nvim@aerial.nvim
[nvim@avante.nvim]: https://github.com/guanghechen/mirror/tree/nvim@avante.nvim
[nvim@blink.cmp]: https://github.com/guanghechen/mirror/tree/nvim@blink.cmp
[nvim@blink.compat]: https://github.com/guanghechen/mirror/tree/nvim@blink.compat
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
[nvim@telescope.nvim#master]: https://github.com/nvim-telescope/telescope.nvim/tree/master
[nvim@nvim-tmux-navigation#main]: https://github.com/alexghergh/nvim-tmux-navigation/tree/main
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