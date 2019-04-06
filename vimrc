set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] " ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>

Plugin 'nvie/vim-flake8'

:colors zenburn

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype on
syntax on

set laststatus=2
set number
set encoding=utf-8

au BufEnter,BufRead *.txt,*.tex set spell

au BufEnter,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix |
	\ highlight OverLength ctermbg=darkgrey guibg=#592929 |
	\ match OverLength /\%80v.*/

set backup
set backupdir=~/.vim/backups
au BufWritePre *.tex,*.bib,*.txt,*.py,*.c,*.h,*.cpp let &backupext='-'.strftime("%Y%b%d%X").'~'

" Enable code folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
