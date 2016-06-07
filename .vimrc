" vimrc
" vundle stuff here
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" vundle manage plugins
Plugin 'gmarik/Vundle.vim'
" other managed plugins go here
Plugin 'othree/html5.vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
"Plugin 'vim-scripts/Conque-Shell'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kien/ctrlp.vim'
" puppet
Plugin 'puppetlabs/puppet-syntax-vim'

call vundle#end()
filetype plugin indent on
" end vundle stuff

" detect filetypes and set defaults
autocmd Filetype python setlocal ts=4 sts=4 sw=4
" i assume i can lump these together
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2

set t_Co=256
set nocompatible
set bs=2
set tw=80
set autoindent
" this is global
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab 
" end global tab stuff
set number " turn on line numbers
"highlight LineNr ctermfg=lightgreen
set nowrapscan
set nobackup " turn off auto backup
set showmatch
set showmode
set uc=0
set hlsearch " highlight search results
set showmatch
set ignorecase
set smartcase
set background=dark
set showcmd " display incomplete commands
set noeol " for hex mode
"set clipboard=unnamedplus " would like this to work
syntax enable

map ^H X
map \e[3~ x
let c_comment_strings=1

"colorscheme xoria256
colorscheme distinguished
"colorscheme oceandeep

highlight LineNr ctermfg=lightblue ctermbg=black

" set Q to q
command Q q

" turn off the arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" now some insert mode maps for arrows
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
" shortcut  for nerdtree
nmap <Leader>n :NERDTreeToggle<CR>
" shortcut for binary view, make sure to :set modifiable first
nmap <Leader>b :%!xxd<CR>
" revert file to bin before writing out
nmap <Leader>wb:%!xxd -r<CR>
" map some buffer commands 
nmap <Leader>bn :bnext<CR>
nmap <Leader>bp :bprevious<CR>
" conqueTerm stuff: terminal in vim buffer
nmap <Leader>ct :ConqueTermSplit bash --login<CR>
" save as root
nmap <Leader>ww :w !sudo tee %<CR>
