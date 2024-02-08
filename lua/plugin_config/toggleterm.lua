require("toggleterm").setup{
  -- 配置选项
  size = 20,
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  persist_size = true,
  direction = 'float', -- 或 'vertical' 或 'float'
  close_on_exit = true, -- 关闭时退出终端
  shell = vim.o.shell, -- 使用Neovim的默认shell
}

