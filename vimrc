
call plug#begin('~/.vim/bundle')
" Themes
Plug 'vim-airline/vim-airline'
" Python Indentation
Plug 'vim-scripts/indentpython.vim'
"Auto Complete
Plug 'Valloric/YouCompleteMe'
" Powerline
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" File Browsing
Plug 'scrooloose/nerdtree'
" If you want to use tabs
Plug  'jistr/vim-nerdtree-tabs'
" Color Schemes
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
call plug#end()

" Python
" 1. Run Code Python by F9
nnoremap <F9> :w<cr>:!python %<cr>
" UTF-8 Support
set encoding=utf-8
" System Clipboard
set clipboard=unnamed

" Color Schemes

" Solarized also ships with a dark and light theme. To make switching between them very easy (by pressing F5) add:
call togglebg#map("<F5>")

" Want to hide .pyc files? Then add the following line:
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" Auto Complete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


filetype plugin indent on
syntax on set number
set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap

" preferences
inoremap jk <ESC>
let mapleader = "\<Space>"
set pastetoggle=<F2>
" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
" Stay in visual mode when indenting. You will never have to run gv after
" performing an indentation.
vnoremap < <gv
vnoremap > >gv
" Make Y yank everything from the cursor to the end of the line. This makes Y
" act more like C or D because by default, Y yanks the current line (i.e. the
" same as yy).
noremap Y y$
" navigate split screens easily
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" change spacing for language specific
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" plugin settings

" deoplete
let g:deoplete#enable_at_startup = 1
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Theme
syntax enable
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark

"NERDTree
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" jsx
let g:jsx_ext_required = 0

