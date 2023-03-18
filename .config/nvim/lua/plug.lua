require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'windwp/nvim-autopairs'
  use 'editorconfig/editorconfig-vim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'lewis6991/gitsigns.nvim'
  use {
    'catppuccin/nvim',
    as = 'catppuccin',
    config = function()
      vim.cmd 'colorscheme catppuccin-latte'
    end
  }
  use {
    'goolord/alpha-nvim',
    config = function ()
      require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'rafamadriz/friendly-snippets'
  use 'saadparwaiz1/cmp_luasnip'
  use {
    'L3MON4D3/LuaSnip',
    tag = 'v<CurrentMajor>.*'
  }
end)
