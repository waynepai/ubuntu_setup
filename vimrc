" ----------------------------------------
" NeoBundle Scripts
" ----------------------------------------
let readme=expand('~/.vim/bundle/neobundle.vim/README.md')
if !filereadable(readme)
	echo "Installing NeoBundle..\n"
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
endif

if has('vim_starting')
	if &compatible
		set nocompatible               " Be iMproved
	endif
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
" Add or remove your Bundles here:
NeoBundle 'ervandew/supertab'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-javascript'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'marijnh/tern_for_vim' " cd ~/.vim/bundle/tern_for_vim ;npm install
NeoBundle 'mattn/emmet-vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'csscomb/vim-csscomb' " npm install -g csscomb
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'Shutnik/jshint2.vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'Valloric/YouCompleteMe' " cd ~/.vim/bundle/YouCompleteMe; ./install.py --clang-completer
NeoBundle 'vim-scripts/indentpython.vim'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'fatih/vim-go'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'jeetsukumaran/vim-buffergator'

call neobundle#end()
filetype plugin indent on

NeoBundleCheck

"Install Ctags
"sudo apt-get install exuberant-ctags
"
"Install Cscope
"sudo apt-get install cscope
"cd ~/.vim/bundle/; wget http://cscope.sourceforge.net/cscope_maps.vim

" ----------------------------------------
" Plugin Setting
" ----------------------------------------
" NERDTree
let NERDTreeShowHidden=1
let g:nerdtree_tabs_autoclose=1
" NERDTreeTabs
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_focus_on_files=1
" Molokai
let g:molokai_original=1
let g:rehash256=1
" Gundo
let g:gundo_right=1
" GitGutter
let g:gitgutter_realtime=1
let g:gitgutter_eager=0
let g:gitgutter_enabled=1
let g:gitgutter_max_signs=2000
" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
let g:strip_whitespace_on_save=0
let g:better_whitespace_filetypes_blacklist=['vim']
let jshint2_save=1

autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235

" ----------------------------------------
" Key Mapping
" ----------------------------------------
let mapleader = ","
nnoremap <silent> <F2> :NERDTreeTabsToggle<CR>
nnoremap <silent> <F4> :TagbarToggle<CR>
map <leader>gd :GundoToggle<CR>
map <leader>gbl :Gblame<CR>
map <leader>gdf :Gdiff<CR>
map <leader>gst :Gstatus<CR>
map <leader>glg :Glog<CR>
map <leader>gla :!git la<CR>
map <leader>bc :CSScomb<CR>
map <leader>ttr :ToggleStripWhitespaceOnSave<CR>
map <leader>a :Ack
map <leader>rr :%s/\r//g<CR>
map <C-_> <leader>ci
map <C-l> :tabnext<CR>
map <C-h> :tabprev<CR>
map <C-j> :tabe
map <C-k> :q<CR>
map <leader>v :e ~/.vimrc<CR>
map <leader>t :tabnew<CR>
nmap <C-a> ggVG <CR>
vmap <C-c> "+yy<ESC>
vmap <C-x> "+c
vmap <C-b> c<ESC>"+p
imap <C-b> <ESC>"+pa
nmap <C-b> "+p
nmap <S-Tab> gt <CR>
noremap  <C-]>  g<C-]>
nnoremap <space> za
map <S-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=*.js --exclude=*.tex .<CR>
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" ----------------------------------------
" Global Setting
" ----------------------------------------
syntax on
set ai
set nu
set ru
set wildmenu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set t_Co=256
set encoding=utf-8
set fileencodings=utf-8,cp950
set ruler
set hlsearch
set incsearch
set ignorecase
set cursorline
"set list listchars=tab:\¦\ ,trail:.
set ttymouse=xterm2
"set clipboard=unnamedplus " sudo apt-get install vim-gtk
"set ffs=unix
set history=1000             " keep 50 lines of command line history
set autoindent               " enable autoindent
set smarttab
set smartindent
set mouse=a                  " mouse support
set showmatch                " Cursor shows matching ) and }
set showmode                 " Show current mode
set backspace=2              " make backspace work like most other apps
set wrap
set linebreak
set clipboard=unnamed
set foldmethod=syntax
set foldlevel=99
set foldclose=all
set completeopt-=preview
set pastetoggle=<F12>
set completeopt-=preview
colorscheme molokai

" ----------------------------------------
" Auto Command
" ----------------------------------------
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))


" ---------------------------------------
" Ctrlp default open in hidden buffer
" ---------------------------------------
let g:ctrlp_open_multiple_files = 'ij'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_show_hidden = 1
nnoremap <C-\> :CtrlPBuffer<CR>


" ---------------------------------------
" YCM config
" ---------------------------------------
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \}

" ---------------------------------------
" Golang
" ---------------------------------------
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" ---------------------------------------
" Airline
" ---------------------------------------
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline_theme= 'bubblegum'

" ---------------------------------------
" Golang
" ---------------------------------------
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"
" Multi cursor
"
" ---------------------------------------
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-m>'
let g:multi_cursor_skip_key='<C-k>'
let g:multi_cursor_quit_key='<Esc>'

" ---------------------------------------
"
" Buufergator
"
" ---------------------------------------
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'
" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1
" Looper buffers
"let g:buffergator_mru_cycle_loop = 1
" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>
" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>
" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>
nmap <leader>bq :bp <BAR> bd #<cr>let g:multi_cursor_quit_key='<Esc>'
nnoremap <leader>1 :1b<cr>
nnoremap <leader>2 :2b<cr>
nnoremap <leader>3 :3b<cr>
nnoremap <leader>4 :4b<cr>
nnoremap <leader>5 :5b<cr>
nnoremap <leader>6 :6b<cr>
nnoremap <leader>7 :7b<cr>
nnoremap <leader>8 :8b<cr>
nnoremap <leader>9 :9b<cr>
nnoremap <leader>0 :10b<cr>
