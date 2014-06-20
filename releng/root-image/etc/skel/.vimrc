" Use Vim settings instead of Vi.
set nocompatible

" General configuration.
set number
set backspace=indent,eol,start
set history=100
set showcmd
set showmode
set gcr=a:blinkon0
set visualbell
set autoread
set hidden

" Turn on syntax highlighting.
syntax on

" Change the leader
let mapleader=","

" Vundle initialization.
if filereadable(expand("~/.vim/vundle.vim"))
    source ~/.vim/vundle.vim
endif

" Turn off swap files
set noswapfile
set nobackup
set nowb

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

set nowrap
set linebreak

" Folds
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Completion
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" Scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" Custom settings.
so ~/.vim/settings.vim

" Setting files (for a clean configuration file)
for f in split(glob("~/.vim/settings/*.vim"), '\n')
    exe "source" f
endfor
