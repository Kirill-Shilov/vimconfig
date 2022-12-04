local elixir = require("elixir")

on_attach = function(client, bufnr)
    local map_opts = { buffer = true, noremap = true}

    vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, map_opts)
    vim.keymap.set('n', '<leader>gk', vim.lsp.buf.declaration, map_opts)
    vim.keymap.set('n', '<leader>gl', vim.lsp.buf.definition, map_opts)
    vim.keymap.set('n', '<leader>K',  vim.lsp.buf.hover, map_opts)
    vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, map_opts)
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
    vim.keymap.set("n", "<leader>g0", ":DocumentSymbols<cr>", map_opts)
    vim.keymap.set("n", "<leader>gW", ":WorkspaceSymbols<cr>", map_opts)
    vim.keymap.set("n", "<leader>di", vim.diagnostic.open_float, map_opts)

    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, map_opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, map_opts)

    -- keybinds for vim-vsnip: https://github.com/hrsh7th/vim-vsnip
    -- vim.cmd([[imap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']])
    -- vim.cmd([[smap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']])

    -- update capabilities for nvim-cmp: https://github.com/hrsh7th/nvim-cmp

--    require("cmp_nvim_lsp").default_capabilities(capabilities)
  end

local capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

elixir.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
