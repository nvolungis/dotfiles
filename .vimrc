" vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" required vundle bundle
Bundle 'gmarik/vundle'

" bundles
Bundle 'christoomey/vim-tmux-navigator'

" nelstrom's plugin depends on kana's
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tomtom/tcomment_vim' 
Bundle 'tpope/vim-rails'
Bundle 'wincent/Command-T'

syntax on
filetype plugin indent on

set nobackup
set nocompatible
set nowb
set noswapfile
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set laststatus=2
set guifont=Monoaco:h14
set hlsearch

let mapleader = ","
let g:mpleader = ","

" smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>h <C-W>h
map <leader>l <C-W>l

map <C-J> <C-W>J
map <C-K> <C-W>K
map <C-H> <C-W>H
map <C-L> <C-W>L
map <silent> <leader><cr> :noh<cr>


" switch between tabs
nmap <leader>tl :tabn<cr>
nmap <leader>th :tabp<cr>

" easy saves
nmap <leader>w :w!<cr>


" => Theme that window
set t_Co=256
let g:solarized_termcolors=256


""""""""""""""""""""""""""""""
" => Number Toggle
""""""""""""""""""""""""""""""
function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc

noremap <C-n> :call NumberToggle()<cr>
