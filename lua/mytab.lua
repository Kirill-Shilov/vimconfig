-- local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

-- augroup('setIndent', { clear = true })
autocmd('Filetype', {
  -- group = 'setIndent',
  pattern = { 'exs', 'ex' },
  command = 'setlocal expandtab=2 shiftwidth=2'
})
