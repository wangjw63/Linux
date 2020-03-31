let mapleader=" "    "equal to windows key
syntax on
set number
set norelativenumber
set cursorline
set wrap   "change line
set showcmd
set wildmenu   "automatic indexing

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set fileencodings=utf-8,gbk,ucs-bom,cp936,gb2312
"set fencs=utf-8,gbk
"set termencoding=utf-8
"set nocompatible
"filetype on
"filetype indent on
"filetype plugin on
"filetype plugin indent on
"set encoding=utf-8
set mouse=a
"set list
"
map s <nop>
map S :w<CR>
map Q :q<CR> 
map R :source $MYVIMRC<CR> 
map ; : 
map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:vsplit<CR>
map sd :set splitbelow<CR>:vsplit<CR>

map <LEADER>r <C-w>l
map <LEADER>l <C-w>h
map <LEADER>u <C-w>j
map <LEADER>d <C-w>k

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize -5<CR>
map <right> :vertical resize +5<CR>

map tn :tabe<CR>
map tl :-tabnext<CR>
map tr :+tabnext<CR>

"change keybords location

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
" File navigation
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'Xuyuanp/nerdtree-git-plugin'
"
"" Taglist
"Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
"
"" Error checking
"Plug 'w0rp/ale'
"
"" Auto Complete
"Plug 'Valloric/YouCompleteMe'
"
"" Undo Tree
"Plug 'mbbill/undotree/'
"
"" Other visual enhancement
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'itchyny/vim-cursorword'
"
"" Git
"Plug 'rhysd/conflict-marker.vim'
"Plug 'tpope/vim-fugitive'
"Plug 'mhinz/vim-signify'
"Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
"
"" HTML, CSS, JavaScript, PHP, JSON, etc.
"Plug 'elzr/vim-json'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
"Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
"Plug 'mattn/emmet-vim'
"
"" Python
""Plug 'vim-scripts/indentpython.vim'
"
" Markdown
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() } }
"Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
"Plug 'vimwiki/vimwiki'

Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
"" Bookmarks
"Plug 'kshenoy/vim-signature'
"
"" Other useful utilities
"Plug 'terryma/vim-multiple-cursors'
"Plug 'junegunn/goyo.vim' " distraction free writing mode
"Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
"Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
"Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
"Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line
"
"" Dependencies
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'kana/vim-textobj-user'
"Plug 'fadein/vim-FIGlet'
"
call plug#end()

color snazzy
let g:SnazzyTransparent = 1



" ===
" === MarkdownPreview
" ===
let g:mkdp_path_to_chrome = ""
" Path to the chrome or the command to open chrome (or other modern browsers).
" If set, g:mkdp_browserfunc would be ignored.

let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
" Callback Vim function to open browser, the only parameter is the url to open.

let g:mkdp_auto_start = 0
" Set to 1, Vim will open the preview window on entering the Markdown
" buffer.

let g:mkdp_auto_open = 0
" Set to 1, Vim will automatically open the preview window when you edit a
" Markdown file.

let g:mkdp_auto_close = 1
" Set to 1, Vim will automatically close the current preview window when
" switching from one Markdown buffer to another.

let g:mkdp_refresh_slow = 0
" Set to 1, Vim will just refresh Markdown when saving the buffer or
" leaving from insert mode. With default 0, it will automatically refresh
" Markdown as you edit or move the cursor.

let g:mkdp_command_for_global = 0
" Set to 1, the MarkdownPreview command can be used for all files,
" by default it can only be used in Markdown files.

let g:mkdp_open_to_the_world = 0
" Set to 1, the preview server will be available to others in your network.
" By default, the server only listens on localhost (127.0.0.1).
