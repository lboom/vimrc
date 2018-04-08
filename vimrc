" vimrc
" vundle stuff here
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" vundle manage plugins
Plugin 'gmarik/Vundle.vim'
" other managed plugins go here
Plugin 'scrooloose/nerdtree'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'cespare/vim-toml'

call vundle#end()
filetype plugin indent on
" end vundle stuff

set t_Co=256
set nocompatible
set bs=2
set autoindent
set tabstop=2
set shiftwidth=2
set number
set nowrapscan
set nobackup
set showmatch
set showmode
set uc=0
set hlsearch
set showmatch
set ignorecase
set smartcase
set background=dark
set showcmd
set colorcolumn=70
syntax enable

map ^H X
map \e[3~ x
let c_comment_strings=1

colorscheme distinguished
"colorscheme oceandeep
"colorscheme xoria256

highlight LineNr ctermfg=lightblue ctermbg=black
command Q q

" turn off the arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" handy commands below
" shortcut  for nerdtree
nmap <Leader>n :NERDTreeToggle<CR>
" shortcut for binary view, make sure to :set modifiable first
nmap <Leader>b :%!xxd<CR>
" map some buffer commands 
nmap <Leader>bn :bnext<CR>
nmap <Leader>bp :bprevious<CR>
" save as root
nmap <Leader>ww :w !sudo tee %<CR>
