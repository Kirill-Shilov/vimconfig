local lspconfig = require'lspconfig'
local lsp_defaults = require'lsp_defaults'
local capabilities = lsp_defaults.capabilities
local on_attach = lsp_defaults.on_attach

-- lspconfig.util.default_config = vim.tbl_deep_extend(
--   'force',
--   lspconfig.util.default_config,
--   lsp_defaults
-- )

lspconfig.pyright.setup{
    capabilities = capabilities,
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
}
