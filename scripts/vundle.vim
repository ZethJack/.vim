" vim:fdm=marker
" Vundle config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')
Plugin 'VundleVim/Vundle.vim' "required
"list of plugins {{{
Plugin 'ciaranm/detectindent'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-markdown'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'Townk/vim-autoclose'
Plugin 'docunext/closetag.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
Plugin 'junegunn/limelight.vim'
Plugin 'ahkcomplete'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/vim-journal'
Plugin 'pprovost/vim-ps1'
Plugin 'huleiak47/vim-ahkcomplete'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'freitass/todo.txt-vim'
Plugin 'isene/hyperlist.vim'
Plugin 'vimoutliner/vimoutliner'
Plugin 'ervandew/supertab'
Plugin 'davisdude/vim-love-docs'
Plugin 'tmhedberg/SimpylFold'
Plugin 'konfekt/fastfold'
Plugin 'nvie/vim-flake8'
Plugin 'PotatoesMaster/i3-vim-syntax'
"}}}
call vundle#end()
