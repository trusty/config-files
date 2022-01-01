filetype off
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elixir-editors/vim-elixir'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'simnalamburt/vim-mundo'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'
Plug 'voldikss/vim-floaterm'

call plug#end()
filetype plugin indent on
set nocompatible
set modelines=0
syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set undodir=~/.config/nvim/undodir

let mapleader = ","


nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap <C-p> :Files<CR>

vnoremap <C-c> "+yi
vnoremap <C-x> "+c
vnoremap <C-v> c<ESC>"+p
inoremap <C-v> <ESC>"+pa

inoremap <expr> <tab> pumvisible() ? "\<Down>" : "\<tab>"
inoremap <A-j> <Up>
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"

nnoremap j gj
nnoremap k gk

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

au FocusLost * :wa

nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:floaterm_keymap_toggle = '<A-t>'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

