local map = vim.keymap.set
local defaults = {noremap = true, silent = true}
local cmd = vim.cmd
local builtin = require('telescope.builtin')
local tree = require('nvim-tree')

cmd 'let g:leadermap = " "'
map('n', '<leader>p', '"_dP', {noremap = true})
-- escape from terminal
vim.keymap.set('n', '<C-f>', '<Nop>', defaults)
vim.keymap.set('n', '<C-b>', '<Nop>', defaults)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', defaults)
vim.keymap.set('', "<C-n>", ':NvimTreeToggle<CR>', {})
-- telescope
vim.keymap.set('n', '<leader>fg', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
