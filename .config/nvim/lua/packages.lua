require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'windwp/nvim-autopairs'
  use 'editorconfig/editorconfig-vim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'lewis6991/gitsigns.nvim'
  use {
    'rebelot/kanagawa.nvim',
    config = function()
      vim.cmd 'colorscheme kanagawa'
    end
  }
  -- use {
  --   'folke/tokyonight.nvim',
  --   config = function()
  --     require('tokyonight').setup({ style = 'moon' })
  --     vim.cmd 'colorscheme tokyonight'
  --   end
  -- }
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }
  use {
    'L3MON4D3/LuaSnip',
    tag = 'v<CurrentMajor>.*'
  }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use {
    'williamboman/mason.nvim',
    config = function() require('mason').setup() end
  }
end)
