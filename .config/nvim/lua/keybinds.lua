-- maps
vim.g.mapleader = ' '
local kmap = vim.keymap.set

kmap('n', '<Space>', '', {})

options = { noremap = true }
kmap("n", "<leader>]", vim.cmd.bnext, options)
kmap("n", "<leader>[", vim.cmd.bprevious(), options)
kmap("n", "<leader>k", vim.cmd.bdelete(), options)
kmap("n", "<leader>K", vim.cmd("bdelete!"), options)
kmap("n", "<leader>w", vim.cmd.write(), options)
kmap("n", "<leader>q", vim.cmd.quit(), options)
kmap("n", "<leader>i", vim.cmd.edit({ bang = true }), options)

-- show full path
kmap('n', '<leader>L', ':! ls %:p<CR>', options)

-- vertical split
kmap("n", "<leader>v", vim.cmd.vsplit, option)

-- replace all
kmap('n', 'S', ':%s//g<Left><Left>', options)

-- shortcutting split navigation
kmap('n', '<leader>sh', '<C-w>h', options)
kmap('n', '<leader>sj', '<C-w>j', options)
kmap('n', '<leader>sk', '<C-w>k', options)
kmap('n', '<leader>sl', '<C-w>l', options)

-- nvim-tree
kmap("n", "<leader>e", vim.cmd.NvimTreeToggle, options)
kmap("n", "<leader>n", vim.cmd.NvimTreeFindFile, options)

local fzf = require("fzf-lua")
kmap('n', '<leader>f', fzf.files, options)
kmap('n', '<leader>r', fzf.live_grep, options)
kmap('n', '<leader>b', fzf.buffers, options)
kmap('n', '<leader>lr', fzf.lsp_references, options)
kmap('n', '<leader>ld', fzf.lsp_definitions, options)

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
