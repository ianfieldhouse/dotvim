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
set list
set listchars=tab:▸\ ,eol:¬

" search settings
set hlsearch
set incsearch

" autocomplete settings
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType python set omnifunc=pythoncomplete#Complete

" Ack settings
nmap <leader>a <Esc>:Ack! 

" Command-t settings
map T :CommandT<CR>

" miniBufExpl settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" NERDTree settings
map ± :execute 'NERDTreeToggle ' . getcwd()<CR>
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=1

" pep8 settings
let g:pep8_map='<leader>8'

" supertab settings
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" surround settings 
" - mappings for django templates
let g:surround_{char2nr("b")} = "{% block\1 \r..*\r &\1 %}\r{% endblock %}"
let g:surround_{char2nr("i")} = "{% if\1 \r..*\r &\1 %}\r{% endif %}"
let g:surround_{char2nr("w")} = "{% with\1 \r..*\r &\1 %}\r{% endwith %}"
let g:surround_{char2nr("c")} = "{% comment\1 \r..*\r &\1 %}\r{% endcomment %}"
let g:surround_{char2nr("f")} = "{% for\1 \r..*\r &\1 %}\r{% endfor %}"
let g:surround_{char2nr("{")} = "{{ \r }}"

" tasklist settings
map <F1> :TaskList<CR>

" remove trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre *.py :call <SID>StripTrailingWhitespaces()

" close doc buffer that omnicomplete shows when leaving Insert mode
au InsertLeave * if pumvisible() == 0|pclose|endif
