" Font
set guioptions-=TlLrR
set guioptions=h
" set guifont=Monaco:h12
set guifont=Inconsolata:h14


" Pretty theme
" colorscheme vividchalk
" colorscheme osx_like
colorscheme twilight

" Show line numbers
set number


set expandtab

" No audible bell
set vb

" No toolbar
set guioptions-=T

" Use console dialogs
set guioptions+=c

" Local config
if filereadable(".gvimrc.local")
  source .gvimrc.local
endif

set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

set number
set expandtab
