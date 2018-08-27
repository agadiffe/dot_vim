" Required for filetype off
set nocompatible
" Required because vundle adds new filetypes. #176
filetype off
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Colorscheme
Plugin 'tomasr/molokai'

" 42 header
" Plugin 'roblabla/42vim'

" snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" go to definition
Plugin 'universal-ctags/ctags'

" source code browser
Plugin 'taglist.vim'

" Language plugins
Plugin 'octol/vim-cpp-enhanced-highlight'

" Utilities
Plugin 'scrooloose/nerdtree'

" File Navigation
Plugin 'Command-T'

call vundle#end()

" Re-enable filetype
filetype plugin indent on
