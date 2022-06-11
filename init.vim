" ~/.config/nvim/init.vim
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"
Plug 'tpope/vim-fugitive'
Plug 'neovim/nvim-lspconfig'
Plug 'vim-airline/vim-airline'
" On-demand loading
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/vim-easy-align'
Plug 'crbinz/vim-links'
Plug 'elixir-editors/vim-elixir'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'


" Initialize plugin system
call plug#end()

:lua require('mylspconfig')
:lua require('mygopls')
:lua require('mypyright')
:lua require('mytss')

autocmd FileType <file type> setlocal filetype+=.links
autocmd FileType nerdtree setlocal relativenumber
colorscheme gruvbox
let g:mapleader=' '
let g:EasyMotion_use_smartsign_us = 1
" relativenumber in nerdtree
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
" set cursorline
set background=dark
set colorcolumn=79
set number
set expandtab
set tabstop=4
set shiftwidth=4
" set tabstop=2
" set shiftwidth=2
set smarttab
set smartindent
set hlsearch
set incsearch
set rnu
let g:lsp_highlights_enabled = 1
" let g:lsp_auto_enable = 0 
let g:lsp_auto_enable = 1
let g:user_emmet_leader_key='<C-y>'

syntax on
" asdf 
vnoremap <leader>p "_dP

syntax on
" mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
map <localleader>
" EasyMotion
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>s <Plug>(easymotion-overwin-f)
" terminal
tnoremap <Esc> <C-\><C-n>

" telescope
nnoremap <leader>fg <cmd>lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<CR>



