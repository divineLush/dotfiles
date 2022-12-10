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
  -- use {
  --   'williamboman/mason.nvim',
  --   config = function() require('mason').setup() end
  -- }
  -- use {
  --   'jose-elias-alvarez/null-ls.nvim',
  --   config = function()
  --     local null_ls = require('null-ls')
  --
  --     null_ls.setup({
  --       sources = {
  --         null_ls.builtins.formatting.stylua,
  --         null_ls.builtins.formatting.autopep8,
  --         null_ls.builtins.formatting.beautysh,
  --         null_ls.builtins.formatting.clang_format,
  --         -- null_ls.builtins.formatting.cljstyle,
  --         -- null_ls.builtins.formatting.eslint,
  --         null_ls.builtins.formatting.prettier,
  --       },
  --     })
  --   end
  -- }
end)
