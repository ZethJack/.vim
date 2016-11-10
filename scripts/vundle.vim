" vim:fdm=marker
" Vundle config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')
Plugin 'VundleVim/Vundle.vim' "required
"list of plugins {{{
Plugin 'ciaranm/detectindent'
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
if has("lua")
	Plugin 'Shougo/neocomplete.vim'
	Plugin 'Shougo/neco-syntax'
	Plugin 'Shougo/neco-vim'
endif
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/vim-journal'
Plugin 'pprovost/vim-ps1'
Plugin 'huleiak47/vim-ahkcomplete'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'freitass/todo.txt-vim'
Plugin 'isene/hyperlist.vim'
Plugin 'vimoutliner/vimoutliner'
"}}}
call vundle#end()
