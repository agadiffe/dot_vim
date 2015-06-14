" Required for filetype off
set nocompatible
" Required because vundle adds new filetypes. #176
filetype off
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Colorscheme
Plugin 'tomasr/molokai'

" 42
Plugin 'roblabla/42vim'

" Language plugins
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()

" Re-enable filetype
filetype plugin indent on
