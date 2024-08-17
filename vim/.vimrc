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

" Enable syntax highlighting
syntax on
