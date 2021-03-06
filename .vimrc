"https://github.com/tarrant89/vimrc.git
"
"doesn't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off
"
" Load plugins here (pathogen or vundle)
" Specify a directory for plugins (avoid using names like plugin)
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'git://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'https://github.com/vim-scripts/AutoComplPop.git'

"Initialize plugin system
call plug#end()
"
"Set colour scheme
colorscheme onedark
" " Turn on syntax highlighting
syntax on
"
" " For plugins to load correctly
filetype plugin indent on
"
"Leader key
let mapleader = ","
"
"Edit vimrc command
nnoremap <Leader>ev :e ~/.vimrc<CR>
"New tabs
nnoremap <Leader>tn :tabnew<CR>
"prvious tab
nnoremap <Leader>th :tabprevious<CR>
"Normal mode
inoremap jk <ESC>
"Disable esc key
inoremap <ESC> <nop>
" " Security
set modelines=0
"
" " Show line numbers
set number
"
" " Show file stats
set ruler
"
" " Blink cursor on error instead of beeping (grr)
set visualbell
"
" " Encoding
set encoding=utf-8
"
" " Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set noshiftround
"
" " Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
"
" " Move up/down editor lines
" nnoremap j gj
" nnoremap k gk
"
" " Allow hidden buffers
set hidden
"
" " Rendering
set ttyfast
"
" " Status bar
set laststatus=2
"
" " Last line
set showmode
set showcmd
"
" " Searching
" nnoremap / /\v
" vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader>/ :let @/=''<cr> " clear search
"
" " Remap help key.
" inoremap <F1> <ESC>:set invfullscreen<CR>a
" nnoremap <F1> :set invfullscreen<CR>
" vnoremap <F1> :set invfullscreen<CR>
"
" " Textmate holdouts
"
" " Formatting
" map <leader>q gqip
"
" " Visualize tabs and newlines
"set listchars=tab:�
" l:�
" " Uncomment this to enable by default:
" " set list " To enable by default
" " Or use your leader key + l to toggle on/off
" map <leader>l :set list!<CR> " Toggle tabs and EOL
"
" Add kspell for auto complete
set complete+=kspell
set completeopt=menuone,longest
