-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 相对行号
vim.wo.number = true
vim.wo.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true
-- 鼠标normal, visual模式
vim.opt.mouse = 'nv'
--缩进
vim.o.cindent = true
vim.o.cinoptions = 'go,L0,:0'
-- tab = 4
vim.o.tabstop = 4
--vim.o.shiftround = true
vim.o.shiftwidth = 4
-- 使用增强状态栏后不再需要 vim 的模式提示
vim.o.showmode = false
-- 禁止折行
vim.o.wrap = false
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
-- 剪贴版
local clip = '/mnt/c/Windows/System32/clip.exe'

if vim.fn.executable(clip) == 1 then
  vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
      if vim.v.event.operator == "y" then
        vim.fn.system(clip, vim.fn.getreg('"'))
      end
    end,
  })
end

