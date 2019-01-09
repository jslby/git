set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'lifepillar/vim-solarized8.git'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'maksimr/vim-jsbeautify'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'rstacruz/vim-closer'

call vundle#end()            " required
filetype plugin indent on    " required

" Encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Tabs and spaces
set shiftwidth=2  "1 tab == 2 spaces
set tabstop=2   "<TAB> == 2 spaces
set softtabstop=2 "<TAB> and backspace
set expandtab
set smarttab    "smart tab
set autoindent    "set auto indent
set smartindent   "set smart indent
set copyindent    "use exisiting indents for new indents
set preserveindent  "save as much indent structure as possible

" UI config
colorscheme solarized8
set background=dark
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized_flood'
set number      "line number
set relativenumber
set rnu
set showmatch   "highlight matching [({})]
set mat=2     "for showmatch, set how many tenth of second it blinks
set ruler     "show current position
set magic     "magic for regular expression
set confirm     "ask to save file
set showcmd     "display incomplete command in the lower right corner of the console
set undolevels=1000 "let vim allow 1000 undos
set noswapfile
" do not work in hammer. Uncomment for those not on hammer server

"Searching
set incsearch        "search as char are entered
set hlsearch         "highlight matches
set smartcase        "smart with case search

"Movement
set mouse=a            "mouse support in console (option + mouseclick for mac users)
set mousehide        "hide cursor when typing
set scrolloff=5            "minimum lines to keep above and below
set ttymouse=xterm2

" Multi cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-d>'
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<A-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"NERDTree
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFocus<CR>

" AutoFormat
map <c-b> :call JsBeautify()<cr>

" Default tab line
let g:indent_guides_enable_on_vim_startup = 1

" CtrlP
let g:ctrlp_map = 'ff'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'


" Life hotkeys
:imap jj <Esc>

" Disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Buffers
map gn :bn<CR>
map gp :bp<CR>
map gc :bd<CR>

" Remove bar
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" OpenFile
nnoremap gf: vertical wincmd f <CR>
