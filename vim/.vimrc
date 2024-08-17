" Disable GUI cursor
set guicursor=

" Enable syntax highlighting
syntax on

" Set a color scheme that's easy on the eyes and works well in most terminals
colorscheme desert

" Enable line numbers and relative line numbers
set number
set relativenumber

" Set manual folding method
set foldmethod=manual

" Tab and indentation settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Disable line wrapping and then enable it
set nowrap
set wrap

" Disable swap file and backup
set noswapfile
set nobackup

" Set undo directory and enable undo file
let &undodir = expand('~/.vim/undodir')
set undofile

" Search settings
set nohlsearch
set incsearch

" Enable terminal GUI colors
set termguicolors

" Scrolling settings
set scrolloff=8
set signcolumn=yes
set isfname+=@-@

" Reduce update time
set updatetime=50

" Set color column at 90
set colorcolumn=90

" Set complete options
set completeopt=menuone,noselect

" Set user emmet leader key to ,
let g:user_emmet_leader_key = ','

" Spell check settings
set nospell
set spelllang=en_us

" Enable clipboard sharing with the system (useful for online editors)
set clipboard=unnamedplus

" Show matching parentheses and brackets
set showmatch

" Set a more visible cursorline
set cursorline

" Turn off annoying bell sounds
set noerrorbells
set visualbell

" Set a basic status line
set laststatus=2
set statusline=%f\ %h%m%r\ %=%-14.(%l,%c%V%)\ %P

" Set file encoding to UTF-8
set encoding=utf-8
set fileencoding=utf-8

" Enable mouse support (if supported by the online environment)
set mouse=a

" Use 256-color mode (better compatibility with modern terminals)
set t_Co=256

" Enable syntax highlighting
syntax on
