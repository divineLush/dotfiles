-- maps
local map = vim.api.nvim_set_keymap
map('n', '<Space>', '', {})

local g = vim.g
g.mapleader = ' '

options = { noremap = true }
map('n', '<leader>]', ':bn<cr>', options)
map('n', '<leader>[', ':bp<cr>', options)
map('n', '<leader>k', ':bd<cr>', options)
map('n', '<leader>w', ':w<cr>', options)
map('n', '<leader>q', ':q<cr>', options)

-- vertical split
map('n', '<leader>sv', '<C-w>v', options)

-- replace all
map('n', 'S', ':%s//g<Left><Left>', options)

-- shortcutting split navigation
map('n', '<leader>sh', '<C-w>h', options)
map('n', '<leader>sj', '<C-w>j', options)
map('n', '<leader>sk', '<C-w>k', options)
map('n', '<leader>sl', '<C-w>l', options)

-- nvim-tree
map('n', '<leader>e', ':NvimTreeToggle<cr>', options)
map('n', '<leader>n', ':NvimTreeFindFile<cr>', options)

-- telescope
map('n', '<leader>f', '<cmd>Telescope find_files<cr>', options)
map('n', '<leader>r', '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>b', '<cmd>Telescope buffers<cr>', options)
