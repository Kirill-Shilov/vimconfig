local lsp_defaults = {
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  ),
}


function lsp_defaults.on_attach(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', '<leader>gk', vim.lsp.buf.declaration, opts)
  buf_set_keymap('n', '<leader>gl', vim.lsp.buf.definition, opts)
  buf_set_keymap('n', '<leader>K', vim.lsp.buf.hover, opts)
  -- buf_set_keymap('n', '<leader>gi', vim.lsp.buf.implementation, opts)
  buf_set_keymap('n', '<leader>gi', vim.lsp.buf.signature_help, opts)
  buf_set_keymap('n', '<leader>qa', vim.lsp.buf.add_workspace_folder, opts)
  buf_set_keymap('n', '<leader>qr', vim.lsp.buf.remove_workspace_folder, opts)
  buf_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<leader>D', vim.lsp.buf.type_definition, opts)
  buf_set_keymap('n', '<leader>rn', vim.lsp.buf.rename, opts)
  buf_set_keymap('n', '<leader>gr', vim.lsp.buf.references, opts)
  buf_set_keymap('n', '<leader>e', vim.lsp.diagnostic.show_line_diagnostics, opts)
  buf_set_keymap('n', '[d', vim.lsp.diagnostic.goto_prev, opts)
  buf_set_keymap('n', ']d', vim.lsp.diagnostic.goto_next, opts)
  buf_set_keymap('n', '<leader>q', vim.lsp.diagnostic.set_loclist, opts)
end

return lsp_defaults
