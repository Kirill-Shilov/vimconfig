local cmd = vim.cmd             -- execute Vim commands
local g = vim.g                 -- global variables
local opt = vim.opt

g.mapleader = " "
g.background=dark
g.number=true
cmd('colorscheme gruvbox')
opt.list = true
opt.listchars:append('trail:$')
opt.listchars:append('eol:↵')
--opt.listchars:append('eol:⏎')
opt.completeopt=menu,menuone,noselect
opt.termguicolors=true
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
opt.number=true
opt.undofile=true
opt.undodir="~/.cache/vim-mundo"
--opt.uncofile=true
-- opt.ingnorecase=true
