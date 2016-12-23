# Info

This repository is a portable version of my .vim directory, in theory it could be downloaded and used on any computer as long as the machine supports GIT.

# Installation

## On Windows

* Download and install VIM 7.4, prefferably build that supports LUA and Python (required by some plugins)

* Remove *vimfiles* folder, *_vimrc* file (if exists) and clone the repository into %USERPROFILE%/.vim, or %HOME% directory if enviroment path for HOME directory is set.
```
    rmdir /s /q vimfiles
    del _vimrc
    git clone path/to/this/.vim.git
```
* go to .vim\bundle and clone Vundle plugin manager from Vundle.vim repository so the plugins specified in plugin/vundle.vim can be installed.
```
    git clone https://github.com/VundleVim/Vundle.vim
```
* create symlink of .vimrc with
```
    mklink /d vimfiles .vim
    mklink _vimrc .vim\.vimrc
```
At this point it should be good to go, It might be necessary to tweak the runtime path or path to vim's directory on portable installs.

## On Linux

* Install Vim and probably Gvim using system's package manager

* clone .vim repository into HOME directory
```
	git clone path/to/this/.vim.git
```
* go to .vim/bundle and clone vundle.vim
```
	git clone https://github.com/VundleVim/Vundle.vim
```
* go back to HOME directory and create symlink for .vimrc file
```
	ln -s .vim/.vimrc .vimrc
```
