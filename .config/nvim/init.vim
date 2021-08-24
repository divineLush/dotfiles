set nocompatible

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-commentary'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'tpope/vim-fugitive'
  Plug 'alvan/vim-closetag'
  Plug 'itchyny/lightline.vim'
  Plug 'cocopon/iceberg.vim'
call plug#end()

set nohlsearch
set incsearch

let mapleader = " "

" sets default clipboard to the system clipboard
set clipboard=unnamedplus
set nobackup
set noswapfile
set t_Co=256
set number

set ignorecase
set smartcase
set encoding=utf-8
set hidden
set cursorline

set mouse=a
set guifont=Inconsolata:h21

syntax on
set showmatch
" let g:everforest_background = 'soft'
colorscheme iceberg

set lazyredraw
set scrolloff=6
set nofoldenable
set nospell

" file type recognition
filetype on
filetype plugin on
filetype indent on

" fix splitting
set splitbelow splitright

" enable auto indent
set autoindent
" map <leader>i :setlocal autoindent <CR>

set fileformat=unix

" enable spell checking
" map <leader>s :setlocal spell! spelllang=en_us<CR>

" vertical split
map <leader>sv <C-w>v

" shortcutting split navigation
map <leader>sh <C-w>h
map <leader>sj <C-w>j
map <leader>sk <C-w>k
map <leader>sl <C-w>l

" switching buffers
map <leader>[ :bp<CR>
map <leader>] :bn<CR>
map <leader>k :bd<CR>

" replace all is aliased to S
map S :%s//g<Left><Left>

" fzf
map <leader>ff :Files<CR>
" ripgrep
map <leader>fr :Rg<CR>
" open buffers
map <leader>fb :Buffers<CR>
" search inside current buffer
map <leader>fl :BLines<CR>
" search inside all opened buffers
map <leader>fL :Lines<CR>
let $FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'

" save and quit
map <leader>w :w<CR>
map <leader>q :q<CR>

" git
map <leader>gs :G<CR>
map <leader>gc :G commit<CR>
map <leader>gp :G push<CR>
map <leader>gu :G pull<CR>

" delete trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" NERDTree
map <leader>nt :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=38

" macros
let @a = "i() => {}\<Esc>6hi"
let @i = "iif () {}\<Esc>3hi"

" closetag
let g:closetag_filenames = '*.html,*.js,*.ts,*.jsx,*.tsx,*.vue'
let g:closetag_xhtml_filenames = '*.xml,*.xhtml,*.js,*.ts,*.jsx,*.tsx,*.vue'
let g:closetag_filetypes = 'html,js,ts,jsx,tsx,vue'
let g:closetag_xhtml_filetypes = 'xml,xhtml,jsx,tsx,vue'
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" statusline
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'iceberg',
      \ 'component_function': {
      \   'fileformat': 'LightlineZero',
      \   'filetype': 'LightlineZero',
      \   'fileencoding': 'LightlineZero',
      \ },
    \ }

function! LightlineZero()
  return ''
endfunction
