set nocompatible
cd ~
let $LANG = 'en'
set langmenu=none
set encoding=utf-8
set termencoding=cp1250
set fileformats=unix,dos
set fileformat=unix

filetype off

if has('win32') || has('win64')
  set rtp+=~/vimfiles/bundle/vundle/
  call vundle#rc('~/vimfiles/bundle')
else
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
endif

Bundle 'gmarik/vundle'
"Bundle 'mb1986/vundle'

Bundle 'native.vim'
Bundle 'project.tar.gz'
Bundle 'hexHighlight.vim'
Bundle 'python.vim'
Bundle 'travitch/hasksyn'
Bundle 'skammer/vim-css-color'
Bundle 'kchmck/vim-coffee-script'
Bundle 'wting/rust.vim'
Bundle 'derekwyatt/vim-fswitch'
Bundle 'Cpp11-Syntax-Support'
Bundle 'justinmk/vim-syntax-extra'
Bundle 'scrooloose/syntastic'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
"Bundle 'garbas/vim-snipmate'
"Bundle 'honza/vim-snippets'
Bundle 'ervandew/supertab'
"Bundle 'Shougo/neocomplcache.vim'

filetype plugin indent on

"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

let g:proj_flags="imstgT"

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }
let g:syntastic_auto_loc_list = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_include_search = 1


"let g:snipMate = {}
"let g:snipMate.scope_aliases = {}
"let g:snipMate.scope_aliases['cpp'] = 'mb_cpp'

let g:SuperTabMappingForward = '<C-Space>'

let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3

set hidden

set nowrap
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set shiftround
set autoindent
set copyindent
set smartindent
set backspace=indent,start
set nojoinspaces
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch

set history=100
set undolevels=100
set wildignore=*.swp,*.bak,*.o
set title
"set visualbell
set noerrorbells
set nobackup

set splitright

"=============================

filetype plugin indent on

set t_Co=256
set background=dark
set number
"colorscheme native256
colorscheme native
syntax on
"hi LineNr ctermfg=238
hi LineNr guifg=#444444
"hi Comment ctermfg=207
"hi Comment guifg=#ff5fff
"set guifont=Inconsolata\ Medium\ 12
set guifont=consolas:h10

hi Pmenu guibg=#444444
"hi PmenuSel
"hi Pmenu-Sbar
"hi PmenuThumb

set guioptions+=T
set guioptions-=T
set guioptions+=RrLlb
set guioptions-=RrLlb


set enc=utf-8
"set tenc=iso-8859-2
set tenc=cp1250

set list
set listchars=trail:.,extends:#,nbsp:.,tab:\ \ 
"set invlist

"set pastetoggle=<F2>
set mouse=a

"=============================

let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nnoremap ; :

nnoremap j gj
nnoremap k gk

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"map <C-|> <C-w>|
"map <C-=> <C-w>=
map <silent> <C-n> :vnew<CR>

"nmap <silent> <S-h> <C-w><
"nmap <silent> <S-l> <C-w>>
"nmap <silent> <S-j> <C-w>+
"nmap <silent> <S-k> <C-w>-

nmap <silent> <leader>n ]m
nmap <silent> <leader>p [m

nmap <silent> <C-c> :bdelete<CR>

nmap <silent> <leader>/ :nohlsearch<CR>

"map <silent> <leader>d :echo system("date")<CR>

nmap <silent> <leader>d 0D

"map <silent> <leader>dt :windo diffthis<CR>
"map <silent> <leader>do :windo diffoff<CR>

map <silent> <leader>m :wa<CR> :!gmake<CR>

nmap <silent> <leader>hon :%!xxd<CR>
nmap <silent> <leader>hof :%!xxd -r<CR>

nmap <silent> <F9> :SyntasticCheck<CR>

"=============================

au! BufEnter *.cpp let b:fswitchdst = 'hpp,h' | let b:fswitchlocs = './'
au! BufEnter *.hpp let b:fswitchdst = 'cpp,c' | let b:fswitchlocs = './'
nmap <leader>ol :FSSplitRight<CR>
nmap <leader>oh :FSSplitLeft<CR>

"=============================

set cm=blowfish

"=============================

"set spelllang=pl
"set spell

"map <F1> :!co -l %<CR>:edit!<CR>
"map <F2> :write %<CR>:!ci -u %<CR>:edit!<CR>

"noremap <silent> <F11> :cal VimCommanderToggle()<CR>
"noremap <silent> <F12> :NERDTreeToggle<CR>
"noremap <silent> <F9> :make<CR>
"noremap <silent> < :bprev<CR>
"noremap <silent> > :bnext<CR> 
"noremap <silent> <F10> :cw<CR>
"noremap <silent> <F8> :A<CR>

