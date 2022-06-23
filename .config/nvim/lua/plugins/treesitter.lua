require'nvim-treesitter.configs'.setup {
  ensure_installed = {
	  'c',
	  'lua',
	  'go',
	  'javascript',
	  'css',
	  'bash',
	  'html',
	  'json',
	  'latex',
	  'python',
	  'scss',
	  'solidity',
	  'tsx',
	  'typescript',
	  'vim',
	  'vue',
	  'yaml',
	  'svelte',
	  'graphql',
  },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
