-- global options
local o = vim.opt
o.swapfile = false
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = false
o.incsearch = true
o.ignorecase = true
o.lazyredraw = true
o.termguicolors = true
o.showmatch = true
o.showmode = false
o.scrolloff = 6
o.mouse = 'a'
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2
o.smartindent = false
o.autoindent = true
o.copyindent = true
o.title = true
o.fileformat = 'unix'
o.clipboard = 'unnamedplus'
o.number = true

-- window-local options
local wo = vim.wo
wo.wrap = true
wo.foldenable = false
wo.cursorline = true

-- strip trailing whitespace
vim.cmd[[autocmd BufWritePre * :%s/\s\+$//e]]
vim.cmd('filetype on')
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')

local g = vim.g
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
