" vim:fdm=marker
" Vundle config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')
Plugin 'VundleVim/Vundle.vim' "required
"list of plugins {{{
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-markdown'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'Townk/vim-autoclose'
Plugin 'docunext/closetag.vim'
Plugin 'edsono/vim-matchit'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
Plugin 'junegunn/limelight.vim'
Plugin 'ahkcomplete'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neco-syntax'
Plugin 'junegunn/goyo.vim'
Plugin 'pprovost/vim-ps1'
Plugin 'freitass/todo.txt-vim'
"}}}
call vundle#end()
