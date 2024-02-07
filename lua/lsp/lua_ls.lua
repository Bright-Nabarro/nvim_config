local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local library = {}

local function add(lib)
  for _, p in pairs(vim.fn.expand(lib, false, true)) do
    p = vim.loop.fs_realpath(p)
    library[p] = true
  end
end

add("$VIMRUNTIME")
-- 添加其他需要的路径...

require('lspconfig').lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- 告诉 `lua-language-server` Neovim 使用的 Lua 版本
        version = 'LuaJIT',
        path = runtime_path,
      },
      diagnostics = {
        -- 获取诊断时忽略的全局变量
        globals = {'vim', 'use'},
      },
      workspace = {
        -- 设置 `library` 使得服务器知道更多的 Neovim 运行时文件
        library = library,
        maxPreload = 10000,
        preloadFileSize = 10000,
      },
    },
  },
}

