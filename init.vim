" ~/.config/nvim/init.vim
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/vim-easy-align'
Plug 'crbinz/vim-links'
Plug 'elixir-editors/vim-elixir'
" On-demand loading
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
autocmd FileType <file type> setlocal filetype+=.links
call plug#end()
colorscheme gruvbox
let g:mapleader=','
let g:EasyMotion_use_smartsign_us = 1
" set cursorline
set background=dark
set number
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
set smartindent
set hlsearch
set incsearch
let g:lsp_highlights_enabled = 1
let g:lsp_auto_enable = 0 

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

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif
