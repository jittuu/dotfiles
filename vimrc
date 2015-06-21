" load pathogen
call pathogen#infect()
call pathogen#helptags()

" Directories for swp files
set backupdir=~/vimtmp/backup
set directory=~/vimtmp/backup

" copy & paste
set clipboard=unnamed

" Set font
if has("gui_running")
  if has("gui_win32")
    set guifont=Meslo_LG_M_for_Powerline:h10:cANSI
    set guioptions-=T
    set guioptions-=m
  endif
endif

" Default color scheme
set background=dark
colorscheme solarized

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

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

" omnicomplete
set completeopt-=preview
set completeopt+=longest
" ctrl+space
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
" autocomplete box with jk movement keys
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Windowing
set splitright

" vim-go
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

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

