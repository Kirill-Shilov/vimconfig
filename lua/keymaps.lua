local map = vim.keymap.set
local defaults = {noremap = true, silent = true}
local cmd = vim.cmd
local builtin = require('telescope.builtin')
-- local tree = require('nvim-tree')

cmd 'let g:leadermap = " "'
map('n', '<leader>p', '"_dP', {noremap = true})
-- escape from terminal
vim.keymap.set('n', '<C-f>', '<Nop>', defaults)
vim.keymap.set('n', '<C-b>', '<Nop>', defaults)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', defaults)
vim.keymap.set('', "<C-n>", ':Neotree toggle<CR>', {})
-- telescope
vim.keymap.set('n', '<leader>fg', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fi', builtin.git_files, {})


vim.keymap.set('n', '<leader>dj', "<Cmd>lua require('dap').toggle_breakpoint()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>dc', "<Cmd>lua require('dap').continue()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>di', "<Cmd>lua require('dap').step_into()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>do', "<Cmd>lua require('dap').step_over()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>dr', "<Cmd>lua require('dap').repl.open()<CR>", {noremap = true, silent = true})

vim.keymap.set('n', '<leader>ut', "<Cmd>:MundoToggle<CR>", {noremap = true, silent = true})
