local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

local servers = {"tsserver", "tailwindcss", "eslint"}
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {  })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {  })

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end