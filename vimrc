" For this to work you should create a ~/.vimrc file containing:
" " Load the first file named 'vimrc' found in runtimepath
" runtime vimrc

set ts=4
set expandtab
set shiftwidth=4
set guifont=Monaco:h13 
set enc=utf-8
set nu
set si
set backspace=2
set hid
set tags=.\tags;\
set foldmethod=syntax
set nowrap
set autoread

map <C-Tab> :bn<Enter>
map <leader>n :NERDTreeToggle<CR>
nmap <leader>a <Esc>:Ack!

:syntax enable
:filetype indent on

colorscheme pychimp

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Otherwise in MacOSX git commit can fail:
" https://github.com/bling/vim-airline/issues/79
let g:airline_theme='dark'
