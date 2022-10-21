local cmd = vim.cmd             -- execute Vim commands
local g = vim.g                 -- global variables
local opt = vim.opt

g.mapleader = " "
g.background=dark
g.number=true
cmd('colorscheme gruvbox')
opt.completeopt=menu,menuone,noselect
opt.termguicolors = true
opt.cursorline=true
opt.colorcolumn='79'
opt.expandtab=true
opt.tabstop=4
opt.shiftwidth=4
opt.smarttab=true
opt.smartindent=true
opt.hlsearch=true
opt.incsearch=true
opt.rnu=true
