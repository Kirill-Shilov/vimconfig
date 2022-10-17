local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

vim.api.nvim_create_augroup("myTabGroup", {clear=true})
autocmd('BufEnter', {
  pattern = { '*.exs', '*.ex' },
  command = 'setlocal tabstop=2 shiftwidth=2',
  group = "myTabGroup",
})


