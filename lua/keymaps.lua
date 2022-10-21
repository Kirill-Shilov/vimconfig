local map = vim.keymap.set
local defaults = {noremap = true, silent = true}
local cmd = vim.cmd
local builtin = require('telescope.builtin')
local tree = require('nvim-tree')
cmd 'let g:leadermap = " "'
map('n', '<leader>p', '"_dP', {noremap = true})
--map('', '<Esc>', '<C-\><C-n>', {noremap = true})
vim.keymap.set('', "<Space>", '<20>', {})
vim.keymap.set('', "<Ctrl-n>", ':NvimTreeToggle', {})
vim.keymap.set('n', '<leader>fg', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
