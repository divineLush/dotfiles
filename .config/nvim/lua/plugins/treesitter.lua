require'nvim-treesitter.configs'.setup {
  ensure_installed = {
	  'c',
	  'clojure',
	  'gitignore',
	  'git_rebase',
	  'cpp',
	  'lua',
	  'go',
	  'javascript',
	  'css',
	  'bash',
	  'html',
	  'json',
	  -- 'latex',
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
	  'dockerfile',
	  'elixir',
	  'markdown',
	  'pug',
	  'todotxt',
	  'comment',
  },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = false,
  },
  autotag = {
    enable = true,
  },
}

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
