require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'windwp/nvim-autopairs'
  use 'editorconfig/editorconfig-vim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'rebelot/kanagawa.nvim'
  use 'lewis6991/gitsigns.nvim'
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }
  -- use 'neovim/nvim-lspconfig'
  -- use 'williamboman/nvim-lsp-installer'
  -- use 'hrsh7th/nvim-cmp'
  -- use 'hrsh7th/cmp-nvim-lsp'
  -- use 'hrsh7th/cmp-buffer'
  -- use 'hrsh7th/cmp-path'
  -- use 'hrsh7th/cmp-cmdline'
  -- use 'glepnir/lspsaga.nvim'
  -- use 'saadparwaiz1/cmp_luasnip'
  -- use 'L3MON4D3/LuaSnip'
  -- use 'rafamadriz/friendly-snippets'
end)
