call pathogen#infect()

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set nocompatible
set autoindent
set hlsearch
set paste
set showcmd
set ruler
set background=dark
set textwidth=79

syntax  on
filetype plugin on

let g:solarized_termcolors=   256     |   16
let g:solarized_termtrans =   0       |   1
let g:solarized_degrade   =   0       |   1
let g:solarized_bold      =   1       |   0
let g:solarized_underline =   1       |   0
let g:solarized_italic    =   1       |   0
let g:solarized_style     =   "dark"  |   "light"
let g:solarized_contrast  =   "normal"|   "high" or "low"

colorscheme solarized

map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>
map <C-i> i'<Esc>ea'<Esc>

nmap <C-t> :OpenNERDTree<CR>
nmap <C-c> :CloseNERDTree<CR>

" these should be removed?
nmap <ESC>c :CloseNERDTree<CR>
nmap <ESC>t :OpenNERDTree<CR>

nmap <C-q> :set hlsearch! hlsearch?<CR>

"autocmd VimEnter * wincmd 

function OpenNERDTree()
  execute ":NERDTree"
 endfunction


function CloseNERDTree()
	execute ":NERDTreeClose"
endfunction

    command -nargs=0 CloseNERDTree :call CloseNERDTree()
    command -nargs=0 OpenNERDTree :call OpenNERDTree()

