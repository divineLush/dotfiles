-- global options
local o = vim.o
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

-- window-local options
local wo = vim.wo
wo.wrap = false
wo.foldenable = false
wo.cursorline = true
wo.relativenumber = true

-- buffer-local options
local bo = vim.bo
bo.expandtab = true
bo.shiftwidth = 2
bo.tabstop = 2
bo.softtabstop = 2
bo.fileformat = 'unix'

-- strip trailing whitespace
vim.cmd[[autocmd BufWritePre * :%s/\s\+$//e]]

local opt = vim.opt
opt.clipboard = 'unnamedplus'
opt.number = true

local g = vim.g
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.closetag_filenames = '*.html,*.js,*.ts,*.jsx,*.tsx,*.vue,*.eta,*.squirrely'
g.closetag_xhtml_filenames = '*.xml,*.xhtml,*.js,*.ts,*.jsx,*.tsx,*.vue,*.eta,.*squirrely'
g.closetag_filetypes = 'html,js,ts,jsx,tsx,vue,eta,squirrely'
g.closetag_xhtml_filetypes = 'xml,xhtml,jsx,tsx,vue,eta,squirrely'
g.closetag_shortcut = '>'
g.closetag_close_shortcut = '<leader>>'
