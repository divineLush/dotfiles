require('nvim-lsp-installer').setup({
    automatic_installation = true,
})

-- local cmp = require'cmp'
--   cmp.setup({
--     snippet = {
--       -- REQUIRED - you must specify a snippet engine
--       expand = function(args)
--         vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
--         -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
--         -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
--         -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
--       end,
--     },
--     window = {
--       -- completion = cmp.config.window.bordered(),
--       -- documentation = cmp.config.window.bordered(),
--     },
--     mapping = cmp.mapping.preset.insert({
--       ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--       ['<C-f>'] = cmp.mapping.scroll_docs(4),
--       ['<C-Space>'] = cmp.mapping.complete(),
--       ['<C-e>'] = cmp.mapping.abort(),
--       ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--     }),
--     sources = cmp.config.sources({
--       { name = 'nvim_lsp' },
--       { name = 'vsnip' }, -- For vsnip users.
--       -- { name = 'luasnip' }, -- For luasnip users.
--       -- { name = 'ultisnips' }, -- For ultisnips users.
--       -- { name = 'snippy' }, -- For snippy users.
--     }, {
--       { name = 'buffer' },
--     })
-- })

-- local saga = require'lspsaga'
-- saga.init_lsp_saga {
--   show_diagnostic_source = true,
--   diagnostic_source_bracket = {},
-- }

-- Setup lspconfig.
require'lspconfig'.pyright.setup {}
require'lspconfig'.tsserver.setup {}
require'lspconfig'.quick_lint_js.setup {}
require'lspconfig'.remark_ls.setup {}
require'lspconfig'.sqls.setup {}
require'lspconfig'.solang.setup {}
require'lspconfig'.sumneko_lua.setup {}
require'lspconfig'.vuels.setup {}
require'lspconfig'.svelte.setup {}
require'lspconfig'.jsonls.setup {}
require'lspconfig'.eslint.setup {}
require'lspconfig'.cssls.setup {}
require'lspconfig'.awk_ls.setup {}
require'lspconfig'.html.setup {}
require'lspconfig'.angularls.setup {}
require'lspconfig'.dockerls.setup {}
require'lspconfig'.cssmodules_ls.setup {}
require'lspconfig'.stylelint_lsp.setup {}
require'lspconfig'.elixirls.setup {}
require'lspconfig'.gopls.setup {}
require'lspconfig'.bashls.setup {}
require'lspconfig'.diagnosticls.setup {}
