" vim:fdm=marker
"Init setup{{{
set nocompatible "disable vi compatibility
set backspace=indent,eol,start
syntax on
filetype off "needed for Vundle
set relativenumber "lines numbers are relative to current line
set hidden
" window size and position {{{
if has("gui_running")
	set guioptions=Ace
	set guifont=Droid\ Sans\ Mono\ 10
	if has("win32")
		set lines=43 columns=120
		winpos 220 0
	else
		set lines=45 columns=120
		winpos 220 0
	endif
endif
"}}}
set wrap
set linebreak
set nolist "list disables linebreak
set cursorline
set ignorecase smartcase gdefault incsearch showmatch hlsearch
set ts=4 sts=4 sw=4 noexpandtab smarttab ai cin cink-=0# indk-=0#
let mapleader=","
set timeoutlen =5000
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000 undoreload=10000
set pastetoggle=<F2>
set showmode
"}}}
"{{{Utf-8?
if has("multi_byte")
	if &termencoding == ""
		let &termencoding = &encoding
	endif
	set encoding=utf-8
	setglobal fileencoding=utf-8
	"setglobal bomb
	set fileencodings=ucs-bom,utf-8,latin1
endif
"}}}
" load external files{{{
source ~/.vim/scripts/vundle.vim "Vundle plugin manager
source ~/.vim/scripts/Stab.vim "Stab function
if &runtimepath =~ 'vim-colors-solarized'
	source ~/.vim/scripts/backgrounds.vim
endif
"}}}
"plugin configs {{{
"after Vundle completes loading itself, following line re-enables filetype
"detection
filetype plugin indent on
syntax enable
set foldcolumn=2
if has("gui_running")
	colorscheme solarized
endif
set laststatus=2
"}}}
"Autocmds {{{
if has("autocmd")
	autocmd StdinReadPre * let s:std_in=1
	autocmd BufNewFile,BufReadPost *.md set filetype=markdown
	autocmd BufWritePost * source ~/.vim/scripts/backgrounds.vim
	autocmd BufNewFile,BufReadPost *.p8 setl ts=2 sts=2 sw=2 expandtab
	autocmd BufNewFile,BufReadPost *.ahk set filetype=autohotkey
	au BufNewFile,BufReadPost *.lua setl ts=2 sts=2 sw=2 expandtab
	au BufNewFile,BufReadPost *.otl setl ts=2 sts=2 sw=2
	au FocusLost * silent! wa
	au BufEnter main.lua nnoremap <leader>r :!love .<CR>
endif
"}}}
"Key bindings{{{
" move by screen lines instead of real lines
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
nnoremap / /\v
vnoremap / /\v
map <leader>n :NERDTreeToggle<CR>
map <C-s> :w<CR>
nnoremap <space> za
if has("gui")
	"distraction free mode
	nnoremap <leader>g :Goyo<CR>
endif
"dims other lines for distraction free writing
nnoremap <leader>l :Limelight!! 0.8<CR>
nnoremap <leader><space> :noh<cr>
"clears all trailing whitespaces in the buffer
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>:noh<CR>
map <leader>R mzgg=G`z
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>ep :e ~/.vim/scripts/vundle.vim<cr>
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
"move lines up and down in normal mode with Alt
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
"move lines up and down in Insert mode with Alt
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
"move lines up and down in Visual mode with Alt
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
nnoremap <F2> :set invpaste paste?<CR>
map <F7> mzgg=G`z
imap <ESC>oA <ESC>ki
imap <ESC>oB <ESC>ji
imap <ESC>oC <ESC>li
imap <ESC>oD <ESC>hi
