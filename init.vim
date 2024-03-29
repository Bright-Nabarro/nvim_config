"lin17's neo-vim profile

"基础设置
lua require('basic')
"快捷键
lua require('keybindings')
"插件
lua require('plugins')


"插件配置
lua require('plugin_config/catppuccin')
lua require('plugin_config/nvim-tree')
lua require('plugin_config/bufferline')
lua require('plugin_config/lualine')
lua require('plugin_config/nvim-treesitter')
lua require('plugin_config/nvim-dap')
lua require('plugin_config/toggleterm')
lua require('plugin_config/rainbow-delimiters')
"lsp
lua require('lsp/setup')
lua require('lsp/nvim-cmp')
lua require('lsp/lua_ls')



