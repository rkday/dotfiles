" personal taste
colorscheme desert
set showmatch
set scrolloff=4
set wildmode=longest,list

" general options
set nocompatible
set incsearch
set showmatch                 " show matching bracket
set diffopt=filler,iwhite
set undolevels=1000
set autochdir
set cmdheight=4
set backspace=indent,eol,start
syntax on

" programming options
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
filetype plugin indent on
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
autocmd FileType clojure setlocal shiftwidth=2 tabstop=2
set autoindent
set ofu=syntaxcomplete#Complete
set number

" avoid mistakes
set cc=80

" remap keybindings for ease
nnoremap ; :
nnoremap : ;
command WQ wq
command Wq wq
command W w
command Q q
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
