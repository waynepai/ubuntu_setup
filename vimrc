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
"cd <source dir> cscope -Rbkq

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
let g:strip_whitespace_on_save=1
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
nmap <leader>b :bp <cr>
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


" ---------------------------------------
"
" cscope
"
" ---------------------------------------
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag
	set csre

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.  
    "

	nmap <C-\>a :cs add /synosrc/packages/source/cscope.out<CR>
	nmap <C-\>A :cs add /synosrc/ds.base/source/cscope.out<CR>
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout 
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout 
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100

endif
