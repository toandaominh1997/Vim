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

" Run multi Code
autocmd filetype python nnoremap <F9> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -std=c++1y -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
" Python
" 1. Run Code Python by F9
" UTF-8 Support
set encoding=utf-8
" System Clipboard
set clipboard=unnamed

" Color Schemes

" Solarized also ships with a dark and light theme. To make switching between them very easy (by pressing F5) add:
call togglebg#map("<F5>")

" Auto save
let g:auto_save = 1
" Want to hide .pyc files? Then add the following line:
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" Auto Complete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>



filetype plugin indent on
set number
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
