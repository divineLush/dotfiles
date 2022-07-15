require('config')
require('keybinds')
require('packages')
require('plugins/autopairs')
require('plugins/gitsigns')
-- require('plugins/lsp')
require('plugins/lualine')
require('plugins/nvimtree')
require('plugins/treesitter')

vim.g.substrata_italic_keywords = true
vim.cmd("colorscheme substrata")
