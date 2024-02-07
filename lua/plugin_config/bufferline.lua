vim.opt.termguicolors = true
require('bufferline').setup {
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
		separator_style = "thick",
		max_name_length = 13,
		tab_size = 15,
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
