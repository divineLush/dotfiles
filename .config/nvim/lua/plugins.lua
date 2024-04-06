local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'nvim-tree/nvim-web-devicons',
  'windwp/nvim-autopairs',
  'editorconfig/editorconfig-vim',
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  'nvim-tree/nvim-tree.lua',
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
  'windwp/nvim-ts-autotag',
  'lewis6991/gitsigns.nvim',
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function ()
      require'catppuccin'.setup({
        transparent_background = true,
      })
      vim.cmd.colorscheme 'catppuccin-mocha'
    end
  },
  {
    'catppuccin/nvim',
    as = 'catppuccin',
  },
  {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function ()
      require('Comment').setup()
    end
  },
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'rafamadriz/friendly-snippets',
  'saadparwaiz1/cmp_luasnip',
  {
    'L3MON4D3/LuaSnip',
    version = 'v2.*'
  }
}

local opts = {}

require('lazy').setup(plugins, opts)
