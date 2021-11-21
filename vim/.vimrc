filetype plugin indent on
syntax on

"so ~/scripts/colorscheme.vim

set relativenumber
set showcmd
set mouse=a
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned

" set termguicolors
" i think it should be like that. i don't have a script that generates vim
" colorschemes for me (yet), so it's a rather temporary thing ;)

set encoding=UTF-8

" block, pipe etc.

let &t_SI = "\e[5 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

" vim-plug

call plug#begin('~/.vim/plugged')
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'fadein/vim-FIGlet'
Plug 'preservim/nerdcommenter'
Plug 'krzysckh/turtel-vim'
Plug 'mhinz/vim-halo'
Plug 'tc50cal/vim-terminal'
Plug 'yuratomo/w3m.vim'
Plug 'theniceboy/vim-calc'
Plug 'mattpenney89/vimify'
Plug 'itchyny/calendar.vim'
Plug 'ashisha/image.vim'
Plug 'leafo/moonscript-vim'

" IDE moment
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'ajh17/vimcompletesme'
call plug#end()

" w3m

let g:w3m#homepage = 'https://lite.duckduckgo.com/lite'

" startify
let g:startify_custom_header = 
	\ startify#pad(split(system('figlet -w $(tput cols) -c -f speed vim'), '\n'))

let g:startify_lists = [
			\ { 'type': 'files', 'header': ['recent'] },
			\ { 'type': 'dir', 'header': ['in '. getcwd()] }
			\ ]

" misc

let g:Hexokinase_highlighters = ['backgroundfull']
let g:NERDCreateDefaultMappings = 1

let g:spotify_token = readfile('/home/krzych/wazeniguess/spt_token')[0]

" own mappings

map \f :FIGlet<CR>
map \new :tabnew<CR>
map \tree :NERDTreeToggle<CR>
map \tterm :tabnew<CR>:Terminal bash<CR>
map \term :tabnew<CR>:term<CR><C-w>jZQ
map \todo :tabnew<CR>:e ~/todo<CR>
map \w3m :tabnew<CR>:W3m<CR>
map \start :Startify<CR>
map \e :call Calc()<CR>
map \json :%!python3 -m json.tool<CR>
map \spt :call feedkeys(':SpSearch ' . input("gib search term: "))<CR>
map \cal :Calendar<CR>

map \\ :call halo#run({'shape':'line'})<CR>
