require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-commentary'
  use 'editorconfig/editorconfig-vim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'kyazdani42/nvim-tree.lua'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'rebelot/kanagawa.nvim'
  use "lukas-reineke/indent-blankline.nvim"
end)
