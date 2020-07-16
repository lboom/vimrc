" vimrc
set t_Co=256
set nocompatible
set bs=2
set autoindent
set tabstop=2
set expandtab
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
" map some buffer commands 
nmap <Leader>bn :bnext<CR>
nmap <Leader>bp :bprevious<CR>
" save as root
nmap <Leader>ww :w !sudo tee %<CR>
