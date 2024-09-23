require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
    "pyright",
    "gopls",
  },
})

local lspconfig = require("lspconfig")

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.lua_ls.setup {
  capabilities = capabilities,
}

lspconfig.pyright.setup{}

lspconfig.gopls.setup{}

-- lspconfig.gopls.setup({
--     on_attach = function(_, bufnr)
--     local function buf_set_keymap(mode, lhs, rhs, opts)
--       vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
--     end
--
--     local function buf_set_option(option, value)
--       vim.api.nvim_buf_set_option(bufnr, option, value)
--     end
--
--     -- 设置当前缓冲区的特定按键映射 (例如, 在 Golang 中使用 'K' 显示文档)
--     buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
--     buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
--   end,
-- })
