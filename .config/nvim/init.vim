set nocompatible

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-commentary'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'tpope/vim-fugitive'
  Plug 'alvan/vim-closetag'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/vim-peekaboo'
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

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set smartcase
set encoding=utf-8
set hidden
set cursorline

set mouse=a
set guifont=Inconsolata:h21

syntax on
set showmatch
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
map <leader>f :Files<CR>
" ripgrep
map <leader>r :Rg<CR>
" open buffers
map <leader>b :Buffers<CR>
" search inside current buffer
map <leader>l :BLines<CR>
" search inside all opened buffers
map <leader>L :Lines<CR>
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
let @c = "iconsole.log()\<Esc>i"

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
      \   'branch': 'FugitiveHead',
      \ },
      \ 'active': {
      \   'right': [['lineinfo'], ['percent'], ['branch']],
      \ },
    \ }

" coc
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-eslint',
    \ 'coc-stylelint',
    \ 'coc-vetur',
    \ 'coc-pyright',
    \ ]

map <leader>cd <Plug>(coc-definition)
map <leader>ctd <Plug>(coc-type-definition)
map <leader>ci <Plug>(coc-implementation)
map <leader>cr <Plug>(coc-references)
map <leader>c[ <Plug>(coc-diagnostic-prev)
map <leader>c] <Plug>(coc-diagnostic-next)
