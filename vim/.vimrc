filetype plugin indent on
syntax on

set relativenumber
set showcmd
set mouse=a
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned

set termguicolors

set encoding=UTF-8

let &t_SI = "\e[5 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

call plug#begin('~/.vim/plugged')
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'fadein/vim-FIGlet'
Plug 'preservim/nerdcommenter'
Plug 'krzysckh/turtel-vim'
Plug 'mhinz/vim-halo'
call plug#end()

let g:Hexokinase_highlighters = ['backgroundfull']
let g:NERDCreateDefaultMappings = 1

map \f :FIGlet<CR>
map \tree :NERDTreeToggle<CR>
map \term :tabnew<CR>:term<CR><C-w>jZQ

map \\ :call halo#run({'shape':'line'})<CR>

