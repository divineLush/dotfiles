-- maps
local map = vim.api.nvim_set_keymap
local kmap = vim.keymap.set

map('n', '<Space>', '', {})

vim.g.mapleader = ' '

options = { noremap = true }
map('n', '<leader>]', ':bn<cr>', options)
map('n', '<leader>[', ':bp<cr>', options)
map('n', '<leader>k', ':bd<cr>', options)
map('n', '<leader>K', ':bd!<cr>', options)
map('n', '<leader>w', ':w<cr>', options)
map('n', '<leader>q', ':q<cr>', options)

-- prettier
map('n', '<leader>p', ':silent %!prettier --stdin-filepath %<CR>', options)

-- show full path
map('n', '<leader>L', ':! ls %:p<CR>', options)

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
local telescope = require('telescope.builtin')
kmap('n', '<leader>f', telescope.find_files, options)
kmap('n', '<leader>c', telescope.commands, options)
kmap('n', '<leader>;', telescope.current_buffer_fuzzy_find, options)
kmap('n', '<leader>"', telescope.registers, options)
kmap('n', '<leader>s', telescope.grep_string, options)
kmap('n', '<leader>fg', telescope.git_files, options)
kmap('n', '<leader>h', telescope.search_history, options)
kmap('n', '<leader>r', telescope.live_grep, options)
kmap('n', '<leader>b', telescope.buffers, options)

-- telescope git
kmap('n', '<leader>gs', telescope.git_status, options)
kmap('n', '<leader>gc', telescope.git_commits, options)
kmap('n', '<leader>gbc', telescope.git_bcommits, options)
kmap('n', '<leader>gh', telescope.git_stash, options)
kmap('n', '<leader>gB', telescope.git_branches, options)

-- telescope lsp
kmap('n', '<leader>lr', telescope.lsp_references, options)
kmap('n', '<leader>li', telescope.lsp_implementations, options)
kmap('n', '<leader>ld', telescope.lsp_definitions, options)
kmap('n', '<leader>ltd', telescope.lsp_type_definitions, options)
kmap('n', '<leader>d', vim.diagnostic.open_float, options)

-- lsp
local lspopts = { noremap = true, silent = true }
kmap('n', 'd[', vim.diagnostic.goto_prev, lspopts)
kmap('n', 'd]', vim.diagnostic.goto_next, lspopts)
kmap('n', 'cD', vim.lsp.buf.declaration, lspopts)
kmap('n', 'cd', vim.lsp.buf.definition, lspopts)
kmap('n', 'ck', vim.lsp.buf.hover, lspopts)
kmap('n', 'ci', vim.lsp.buf.implementation, lspopts)
kmap('n', 'cs', vim.lsp.buf.signature_help, lspopts)
kmap('n', 'cl', function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, lspopts)
kmap('n', 'ct', vim.lsp.buf.type_definition, lspopts)
kmap('n', 'cr', vim.lsp.buf.references, lspopts)
kmap('n', 'cf', vim.lsp.buf.format, lspopts)
kmap('n', 'ca', vim.lsp.buf.code_action, lspopts)

-- vim.cmd[[autocmd BufNewFile, BufRead *.vue set filetype=vue]]
