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

" map Leader key to ,
let mapleader = ","