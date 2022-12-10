local ls = require('luasnip')

require("luasnip.loaders.from_vscode").lazy_load()

ls.config.set_config({
  history = true,
  enable_autosnippets = true
})
