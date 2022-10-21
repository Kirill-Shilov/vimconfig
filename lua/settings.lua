local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt
local o=vim.o


opt.completeopt=menu,menuone,noselect
g.colorscheme=gruvbox
opt.cursorline=true
opt.background=dark
g.colorcolumn=79
g.number=true
-- 
--cmd([[set background=dark]])
--cmd [[set colorcolumn=79]]
--cmd([[set number]])
opt.expandtab=true
opt.tabstop=4
opt.shiftwidth=4
opt.smarttab=true
opt.smartindent=true
opt.hlsearch=true
opt.incsearch=true
opt.rnu=true
