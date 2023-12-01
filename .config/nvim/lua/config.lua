-- global options
local o = vim.opt
o.swapfile = false
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = false
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
o.copyindent = true
o.title = true
o.fileformat = 'unix'
o.clipboard = 'unnamedplus'
o.number = true
o.rnu = true
o.guifont = { "Fira Mono", ":h10"}

-- window-local options
local wo = vim.wo
wo.wrap = true
wo.foldenable = false
wo.cursorline = true

-- strip trailing whitespace
vim.cmd[[autocmd BufWritePre * :%s/\s\+$//e]] vim.cmd('filetype on')
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')

local g = vim.g
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

if g.neovide then
  g.neovide_scroll_animation_length = 0.16
  g.neovide_cursor_animation_length = 0.16
  g.neovide_cursor_vfx_mode = 'railgun'
end
