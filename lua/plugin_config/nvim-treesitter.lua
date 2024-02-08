require('nvim-treesitter.configs').setup {
  -- 安装 language parser
  ensure_installed = {"c", "cpp", "vim", "lua", "markdown", "html"},
  -- 启用代码高亮功能
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  rainbow = {
	  enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {
		"#bad3d9",
		"#c4bad9",
		"#d9bac3",
		"#d9d9ba",
		"#bdd9ba"
	}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  -- 启用增量选择
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  },
}
-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
vim.wo.foldlevel = 99
