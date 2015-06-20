" load pathogen
call pathogen#infect()
call pathogen#helptags()

" Directories for swp files
set backupdir=~/vimtmp/backup
set directory=~/vimtmp/backup

" Set font
if has("gui_running")
  if has("gui_win32")
    set guifont=consolas:h11:cANSI
    set guioptions-=T
    set guioptions-=m
  endif
endif

" Default color scheme
set background=dark
colorscheme solarized

" ruler
set number
set ruler
syntax on

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Set encoding
set encoding=utf-8

" indent
set smartindent
set autoindent

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Clear search result highlight
:command! C let @/=""

" Status bar
set laststatus=2

" Show (partial) command in the status line
set showcmd

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Windowing
set splitright

" map Leader key to ,
let mapleader = ","

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" window movement
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

