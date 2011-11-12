call pathogen#infect()
syntax on
filetype plugin indent on

" NERDTree settings
map ± :execute 'NERDTreeToggle ' . getcwd()<CR>
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=1
