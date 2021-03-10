" better safe than sorry
set nocompatible


" enable syntax highlighting
syntax on
syntax enable


" set leader key
let mapleader = ","
let g:mpleader = ","


" get vundle rollin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fireplace.git'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'godlygeek/tabular'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/promptline.vim'
Plugin 'moll/vim-node'
Plugin 'matze/vim-move'
Plugin 'k0kubun/vim-open-github'
Plugin 'thoughtbot/vim-rspec'
Plugin 'dyng/ctrlsf.vim'
Plugin 'slashmili/alchemist.vim'
Plugin 'yegappan/greplace'
Plugin 'brooth/far.vim'

" lang syntax
Plugin 'kchmck/vim-coffee-script'
Plugin 'guns/vim-clojure-static'
Plugin 'mxw/vim-jsx'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'ElmCast/elm-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'chrisbra/csv.vim'
Plugin 'elixir-editors/vim-elixir'


" formatting
Plugin 'sbdchd/neoformat'
Plugin 'w0rp/ale'


" colorschemes
Plugin 'w0ng/vim-hybrid'
Plugin 'djjcast/mirodark'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()


" set colorscheme / variation
set background=light
colorscheme solarized

" set macligatures
set guifont=Fira\ Code:h12

set grepprg=ack

set modeline
set nobackup
set nocompatible
set nowb
set noswapfile
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set laststatus=2


" set up relative number with current line number
set relativenumber
set number


" highlight search term
set hlsearch


" backspace through everything in insert mode
set backspace=indent,eol,start


" Reset the listchars
set listchars=""


" a tab should display as "  ", trailing whitespace as "."
set listchars=tab:\ \


" show trailing spaces as dots
set listchars+=trail:·


" The character to show in the last column when wrap is
" off and the line continues beyond the right of the screen
set listchars+=extends:>


" The character to show in the last column when wrap is
" off and the line continues beyond the left of the screen
set listchars+=precedes:<


" enable list settings
set list


" clipboard
:set clipboard=unnamed


" smart way to move between windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l


" unhighlight currently highlighted
map <silent> <leader><cr> :noh<cr>
map <Leader>e :Tab /=\(>\)\@!<CR>
map <Leader>f :Tab /from/<CR>
map <Leader>c :Tab /:/<CR>


" switch between tabs
nmap <leader>tl :tabn<cr>
nmap <leader>th :tabp<cr>


" easy saves
map <leader>w :w!<cr>

" ease quit all
map <leader>q :qa<cr>

" don't open vimdiff in readonly mode
set noro

" nerdtree window width
let g:NERDTreeWinSize = 60
let g:ctrlp_dont_split = 'nerdtree'

" set column w/ to 80 chars
set colorcolumn=100

" prettier on save
autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.jsx Neoformat

" ale icon backgrounds
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" clear signcolumn background
highlight clear SignColumn

" set ale signs
let g:ale_sign_error = '💩'
let g:ale_sign_warning = '⚠️'

" setup ctrlP
let g:ctrlp_map = '<Leader>s'
let g:ctrlp_cmd = 'CtrlP'
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules',
  \ }

" setup Ctrl-Shift-F
nmap <Leader>f <Plug>CtrlSFPrompt
let g:ctrlsf_ignore_dir = ['dist_es3', 'node_modules']

" fix some typos
map :W :w
map :Q :q


" toggle between relnumber and regular number
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

noremap <C-n> :call NumberToggle()<cr>


function! BackgroundToggle()
  if(&background=="dark")
    set background=light
  else
    set background=dark
  endif
endfunc

noremap <C-b> :call BackgroundToggle()<cr>


function! s:FixWhitespace(line1,line2)
  let l:save_cursor = getpos(".")
  silent! execute ':' . a:line1 . ',' . a:line2 . 's/\s\+$//'
  call setpos('.', l:save_cursor)
endfunction


" allow filetype detection
filetype off
filetype on
filetype plugin on
" filetype indent on

let g:rspec_command = "bin/rspec {spec}"
