" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim


filetype plugin indent on

syntax enable


set number
set showcmd
set mouse=a
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set termguicolors

let &t_SI = "\e[5 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

call plug#begin('~/.config/nvim/plugged')
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()


lua require'colorizer'.setup()
