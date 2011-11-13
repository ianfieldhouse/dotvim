call pathogen#infect()

" hide macvim toolbar
if has("gui_running")
    set guioptions-=T
endif

" file settings
set encoding=utf-8
set nobackup
set noswapfile
set wildignore+=*.pyc
set printoptions=paper:A4,duplex:off,portrait:n,number:y,wrap:y

" color settings
colorscheme zenburn
set colorcolumn=80

" code editing settings
syntax on
filetype on
filetype plugin on
filetype plugin indent on
set number
set numberwidth=5
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent

" search settings
set hlsearch
set incsearch

" Command-t settings
map T :CommandT<CR>

" NERDTree settings
map ± :execute 'NERDTreeToggle ' . getcwd()<CR>
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=1
