let mapleader = ","
let g:mpleader = ","

nmap <leader>w :w!<cr>

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile



""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>h <C-W>h
map <leader>l <C-W>l
"map <C-J> <C-W>J
"map <C-K> <C-W>K
"map <C-H> <C-W>H
"map <C-L> <C-W>L

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set guifont=Monoaco:h14

""""""""""""""""""""""""""""""
" => For the NERD Commenter
""""""""""""""""""""""""""""""

filetype plugin on

""""""""""""""""""""""""""""""
" => Fancy window splitting
""""""""""""""""""""""""""""""
set winwidth=30
set winminwidth=30
set winwidth=9999

