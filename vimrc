set nocompatible              " be iMproved  
filetype off                  " required!
set encoding=utf-8
set fileencoding=utf-8

set rtp+=/home/wayne/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My bundles here:
" useful tools
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'
"search plugin
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'taglist.vim'
"snipmate
Bundle 'honza/vim-snippets'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
"web plugins
Bundle 'ZenCoding.vim'
"Bundle 'css_color.vim'
"Bundle 'html5.vim'
"Bundle 'JavaScript-syntax'
"Bundle 'pangloss/vim-javascript'
Bundle 'lepture/vim-javascript'
"auto complete
Bundle 'AutoComplPop'
Bundle 'L9'
"select color scheme
Bundle 'colorselector'
Bundle 'clang-complete'
Bundle 'tpope/vim-fugitive'
Bundle 'a.vim'
Bundle 'Yggdroot/indentLine'

filetype on
filetype plugin indent on     " required!

syntax on

" general settings
set history=1000             " keep 50 lines of command line history
set nu                       " enable line numbers
" indentation
set autoindent               " enable autoindent
"set expandtab                " use space instead of tab
set smarttab
set smartindent
set tabstop=4
set shiftwidth=4
set mouse=a                  " mouse support
"set cursorline               " highlight current line
set showmatch                " Cursor shows matching ) and }
set showmode                 " Show current mode
"set showcmd
set backspace=2              " make backspace work like most other apps
set wrap
set linebreak
"set clipboard=unnamedplus
set clipboard=unnamed

autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
"autocmd bufwritepre * :%s/\s\+$//e

set t_Co=256
color molokai

" key mapping
let mapleader = ","
map <leader>v :e ~/.vimrc<CR>
map <leader>t :tabnew<CR>

"clang setting
let g:clang_complete_auto = 1
"let g:clang_complete_copen = 1
let g:clang_use_library=0
let g:clang_library_path = '/usr/lib/llvm-3.4/lib'
"let g:clang_debug = 1
"let g:clang_periodic_quickfix=1
let g:clang_snippets=0
"let g:clang_close_preview=1
let g:clang_user_options='|| exit 0'


nmap <C-a> ggVG <CR>
"copy and paste
vmap <C-c> "+yy<ESC>
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
nmap <C-v> "+p
"switch tab
nmap <S-Tab> gt <CR>

"html and js indent
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

map <S-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


