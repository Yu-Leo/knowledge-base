"For plugins (vim-plug)
call plug#begin('~/.vim/plugged')

"Project tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"Auto-complite paired characters
Plug 'jiangmiao/auto-pairs'

"Gruvbox colorscheme
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

"For quick search in text
Plug 'easymotion/vim-easymotion'

call plug#end()

syntax on "Turn on syntax hightlight
colorscheme onedark "Set colorscheme
set background=dark "Set colorscheme dark mode
hi Normal guibg=NONE ctermbg=NONE

set number "Turn on string's numbers
set relativenumber

set expandtab "Replace tab's to spaces
set tabstop=4 "Tab = 4 spaces
set shiftwidth=4
set smarttab
set softtabstop=4

set autoindent

"For more beautiful search
set hlsearch
set incsearch

set mouse= "Turn off mouse

set wrap
set linebreak

set nobackup
set noswapfile
set encoding=utf-8 
set fileencodings=utf8,cp1251

set visualbell t_vb=

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

let mapleader = " "
let g:mapleader = " "

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

"mappings for buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"mappings for tabs
nnoremap <silent> [t :tabprevious<CR>
nnoremap <silent> ]t :tabnext<CR>

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Netrw file explorer settings
let g:netrw_banner = 0 " hide banner above files
let g:netrw_liststyle = 3 " tree instead of plain view
