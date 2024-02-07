require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

-- mason-lspconfig uses the `lspconfig` server names in the APIs it exposes - not `mason.nvim` package names
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
	"lua_ls",
	"bashls",
	"clangd",
	"cmake",
    "html",
    "jsonls",
    "pyright",
    "rust_analyzer",
  },
})

require("mason-lspconfig").setup_handlers({
	function(server_name)
    -- 默认处理程序
    local ok, _ = pcall(require, "lsp." .. server_name)
    if not ok then
      require("lspconfig")[server_name].setup{}
    end
  end,
})

local lspconfig = require('lspconfig')
local pluginKeys = require('keybindings')

require("mason-lspconfig").setup_handlers({
  -- 默认处理程序
  function(server_name)
    local opts = {
      on_attach = function(_, bufnr)
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        pluginKeys.maplsp(buf_set_keymap)
      end,
      flags = {
        debounce_text_changes = 150,
      },
    }

    -- 尝试从一个专门的配置文件加载额外的服务器特定配置
    local ok, extra_opts = pcall(require, "lsp.settings." .. server_name)
    if ok then
      -- 合并额外配置
      for k, v in pairs(extra_opts) do opts[k] = v end
    end

    lspconfig[server_name].setup(opts)
  end,
})

