local elixir = require("elixir")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

elixir.setup({
  -- capabilities = capabilities,
  on_attach = function(client, bufnr)
    local map_opts = { buffer = true, noremap = true}

    vim.keymap.set('n', '<leader>gk', '<Cmd>lua vim.lsp.buf.declaration()<CR>', map_opts)
    vim.keymap.set('n', '<leader>gl', '<Cmd>lua vim.lsp.buf.definition()<CR>', map_opts)
    vim.keymap.set('n', '<leader>K', '<Cmd>lua vim.lsp.buf.hover()<CR>', map_opts)
    vim.keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', map_opts)
    -- run the codelens under the cursor
    vim.keymap.set("n", "<leader>r",  vim.lsp.codelens.run, map_opts)
    -- remove the pipe operator
    vim.keymap.set("n", "<leader>pf", ":ElixirFromPipe<cr>", map_opts)
    -- add the pipe operator
    vim.keymap.set("n", "<leader>pt", ":ElixirToPipe<cr>", map_opts)
    vim.keymap.set("v", "<leader>em", ":ElixirExpandMacro<cr>", map_opts)

    -- keybinds for fzf-lsp.nvim: https://github.com/gfanto/fzf-lsp.nvim
    -- you could also use telescope.nvim: https://github.com/nvim-telescope/telescope.nvim
    -- there are also core vim.lsp functions that put the same data in the loclist
    vim.keymap.set("n", "<leader>gj", ":References<cr>", map_opts)
    vim.keymap.set("n", "<leader>g0", ":DocumentSymbols<cr>", map_opts)
    vim.keymap.set("n", "<leader>gW", ":WorkspaceSymbols<cr>", map_opts)
    vim.keymap.set("n", "<leader>d", ":Diagnostics<cr>", map_opts)

    vim.keymap.set('n', '[d', '<Cmd>lua vim.diagnostic.goto_prev()<CR>', map_opts)
    vim.keymap.set('n', ']d', '<Cmd>lua vim.diagnostic.goto_next()<CR>', map_opts)

    -- keybinds for vim-vsnip: https://github.com/hrsh7th/vim-vsnip
    -- vim.cmd([[imap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']])
    -- vim.cmd([[smap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']])

    -- update capabilities for nvim-cmp: https://github.com/hrsh7th/nvim-cmp
    require("cmp_nvim_lsp").default_capabilities(capabilities)
  end
})
