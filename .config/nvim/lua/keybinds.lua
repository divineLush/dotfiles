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
map('n', ';', '<cmd>Telescope current_buffer_fuzzy_find<cr>', options)
map('n', '<leader>s', '<cmd>Telescope grep_string<cr>', options)
map('n', '<leader>fg', '<cmd>Telescope git_files<cr>', options)
map('n', '<leader>h', '<cmd>Telescope search_history<cr>', options)
map('n', '<leader>r', '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>b', '<cmd>Telescope buffers<cr>', options)
map('n', '<leader>gs', '<cmd>Telescope git_status<cr>', options)
map('n', '<leader>gl', '<cmd>Telescope git_commits<cr>', options)
map('n', '<leader>gbl', '<cmd>Telescope git_bcommits<cr>', options)

-- git
map('n', '<leader>gs', ':! git status<cr>', options)
map('n', '<leader>gd', ':! git diff<cr>', options)
map('n', '<leader>gl', ':! git log --oneline<cr>', options)
map('n', '<leader>gc', ':! git commit<cr>', options)
map('n', '<leader>ga', ':! git add .<cr>', options)
map('n', '<leader>gu', ':! git pull origin<cr>', options)
map('n', '<leader>gp', ':! git push -u origin<cr>', options)
map('n', '<leader>gr', ':! git reset<cr>', options)

-- lsp
-- local kmap = vim.keymap
-- local lspopts = { noremap=true, silent=true }
-- kmap.set('n', 'd[', vim.diagnostic.goto_prev, lspopts)
-- kmap.set('n', 'd]', vim.diagnostic.goto_next, lspopts)
-- kmap.set('n', 'cD', vim.lsp.buf.declaration, lspopts)
-- kmap.set('n', 'cd', vim.lsp.buf.definition, lspopts)
-- kmap.set('n', 'ck', vim.lsp.buf.hover, lspopts)
-- kmap.set('n', 'ci', vim.lsp.buf.implementation, lspopts)
-- kmap.set('n', 'cs', vim.lsp.buf.signature_help, lspopts)
-- kmap.set('n', 'cl', function()
--   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- end, lspopts)
-- kmap.set('n', 'ct', vim.lsp.buf.type_definition, lspopts)
-- kmap.set('n', 'cr', vim.lsp.buf.references, lspopts)
-- kmap.set('n', 'cf', vim.lsp.buf.formatting, lspopts)
