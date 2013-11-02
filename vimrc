" load pathogen
call pathogen#infect()

" base customization
set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

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

" Directories for swp files
set backupdir=~/vimtmp/backup
set directory=~/vimtmp/backup

" go Fmt on save
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" omnicomplete
set completeopt-=preview
set completeopt+=longest

" supertab
let g:SuperTabDefaultCompletionType = "context"

" map Leader key to ,
let mapleader = ","

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" NERDTree toggle
map <Leader>d :NERDTreeToggle<CR>

:command C let @/=""

" Default color scheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
