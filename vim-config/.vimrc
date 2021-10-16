"For plugins (vim-plug)
call plug#begin('~/.vim/plugged')

"Project tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"Auto-complite paired characters
Plug 'jiangmiao/auto-pairs'

"Gruvbox colorscheme
Plug 'morhetz/gruvbox'

"For quick search in text
Plug 'easymotion/vim-easymotion'

call plug#end()


syntax on "Turn on syntax hightlight
colorscheme gruvbox "Set colorscheme
set background=dark "Set colorscheme dark mode

set number "Turn on string's numbers

set expandtab "Replace tab's to spaces
set tabstop=4 "Tab = 4 spaces

"For more beautiful search
set hlsearch
set incsearch

set mouse= "Turn off mouse

"Turn off keys with arrows
"Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
"Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
"Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

let g:mapleader=','

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
