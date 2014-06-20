filetype off

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/vundles/
call vundle#rc()

" Self management.
Bundle "gmarik/vundle"

runtime appearance.vundle
runtime ide.vundle

filetype plugin indent on
