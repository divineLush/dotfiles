require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-commentary'
  use 'editorconfig/editorconfig-vim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  -- use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'alvan/vim-closetag'
  use 'rebelot/kanagawa.nvim'
end)

-- require'lspconfig'.pyright.setup{}
-- require'lspconfig'.tsserver.setup{}
-- require'lspconfig'.sumneko_lua.setup{}
-- require'lspconfig'.vimls.setup{}
-- require'lspconfig'.vuels.setup{}
-- require'lspconfig'.svelte.setup{}
-- require'lspconfig'.tsserver.setup{}
-- require'lspconfig'.jsonls.setup{}
-- require'lspconfig'.html.setup{}
-- require'lspconfig'.graphql.setup{}
-- require'lspconfig'.eslint.setup{}
-- require'lspconfig'.dockerls.setup{}
-- require'lspconfig'.angularls.setup{}
-- require'lspconfig'.awk_ls.setup{}
-- require'lspconfig'.cssls.setup {}
-- require'lspconfig'.cssmodules_ls.setup{}
-- require'lspconfig'.stylelint_lsp.setup{}
-- require'lspconfig'.bashls.setup{}
-- require'lspconfig'.diagnosticls.setup{}
