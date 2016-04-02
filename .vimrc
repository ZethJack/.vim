" vim:fdm=marker
"Init setup{{{
set nocompatible
set backspace=indent,eol,start
syntax on
filetype off "needed for Vundle
set relativenumber
set hidden
set guioptions =-m
set wrap
set linebreak
set nolist "list disables linebreak
set cursorline
set ignorecase smartcase gdefault incsearch showmatch hlsearch
set tabstop=8 softtabstop=4 expandtab shiftwidth=4 smarttab ai si
let mapleader=","
set timeoutlen =5000
set undofile
set undodir=$VIM/vimfiles/undo
set undolevels=1000 undoreload=10000
"}}}
" load external files{{{
source ~/vimscripts/vundle.vim "Vundle plugin manager
source ~/vimscripts/_session.vim "Session script - for window size and position saving
source ~/vimscripts/neocomplete.vim "NeoComplete - Autocompletion plugin
"}}}
"plugin configs {{{
"after Vundle completes loading itself, following line re-enables filetype
"detection
filetype plugin indent on
syntax enable
set background=light
set foldcolumn=2
colorscheme solarized
set laststatus=2
"}}}
"Autocmds {{{
autocmd StdinReadPre * let s:std_in=1
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType markdown NeoCompleteLock
autocmd BufNewFile,BufReadPost *.p8 set sts=2 shiftwidth=2
autocmd BufNewFile,BufReadPost *.ahk set filetype=autohotkey
au FocusLost * silent! wa
"}}}
"Key bindings{{{
nnoremap / /\v
vnoremap / /\v
map <C-n> :NERDTreeToggle<CR>
map <C-s> :w<CR>
nnoremap <space> za
if has("gui")
    "distraction free mode
    nnoremap <leader>g :Goyo<CR>
endif
"dims other lines for distraction free writing
nnoremap <leader>l :Limelight!! 0.8<CR>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>:noh<CR>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>ep <C-w><C-v><C-l>:e ~/vimscripts/vundle.vim<cr>
"close current window
nnoremap <leader>cw <C-w>c
"close other windows
nnoremap <leader>co <C-w>o
"window navigation bindings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"automatic indntation after braces+cr
inoremap {<cr> {<cr>}<c-o>O
inoremap [<cr> [<cr>]<c-o>O
inoremap (<cr> (<cr>)<c-o>O
"NeoComplete toggle
nnoremap <leader>nce :NeoCompleteEnable<cr>
nnoremap <leader>ncd :NeoCompleteDisable<cr>
