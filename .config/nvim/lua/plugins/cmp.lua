local cmp = require'cmp'
local ls = require('luasnip')

cmp.setup({
    snippet = {
      expand = function(args)
        require('ls').lsp_expand(args.body)
      end,
    },
    window = {
      completion = cmp.config.window.bordered(), documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif ls.expand_or_jumpable() then
          ls.expand_or_jump()
        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif ls.jumpable(-1) then
          ls.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" }),
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
    }, {
      { name = 'buffer' },
    })
})

-- Setup lspconfig.
require'lspconfig'.pyright.setup {}
require'lspconfig'.tsserver.setup {}
-- require'lspconfig'.quick_lint_js.setup {}
-- require'lspconfig'.remark_ls.setup {}
-- require'lspconfig'.sqls.setup {}
-- require'lspconfig'.solang.setup {}
-- require'lspconfig'.sumneko_lua.setup {}
require'lspconfig'.volar.setup {}
require'lspconfig'.svelte.setup {}
require'lspconfig'.jsonls.setup {}
require'lspconfig'.eslint.setup {}
require'lspconfig'.cssls.setup {}
-- require'lspconfig'.awk_ls.setup {}
require'lspconfig'.html.setup {}
require'lspconfig'.angularls.setup {}
require'lspconfig'.dockerls.setup {}
require'lspconfig'.cssmodules_ls.setup {}
require'lspconfig'.stylelint_lsp.setup {}
-- require'lspconfig'.elixirls.setup {}
-- require'lspconfig'.gopls.setup {}
require'lspconfig'.bashls.setup {}

-- vim.diagnostic.disable()
vim.diagnostic.config({
  -- disable = true,
  -- signs = true,
  virtual_text = false,
  update_in_insert = false,
})
-- vim.cmd[[autocmd BufEnter * lua vim.diagnostic.disable()]]
