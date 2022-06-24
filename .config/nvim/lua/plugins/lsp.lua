require('nvim-lsp-installer').setup({
    automatic_installation = true,
})

local cmp = require'cmp'
  cmp.setup({
    -- snippet = {
    --   -- REQUIRED - you must specify a snippet engine
    --   expand = function(args)
    --     vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    --     -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    --     -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
    --     -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    --   end,
    -- },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require('lspconfig')['pyright'].setup {
  capabilities = capabilities
}
require('lspconfig')['tsserver'].setup {
  capabilities = capabilities
}
require('lspconfig')['quick_lint_js'].setup {
  capabilities = capabilities
}
require('lspconfig')['remark_ls'].setup {
  capabilities = capabilities
}
require('lspconfig')['sqls'].setup {
  capabilities = capabilities
}
require('lspconfig')['solang'].setup {
  capabilities = capabilities
}
require('lspconfig')['sumneko_lua'].setup {
  capabilities = capabilities
}
require('lspconfig')['vuels'].setup {
  capabilities = capabilities
}
require('lspconfig')['svelte'].setup {
  capabilities = capabilities
}
require('lspconfig')['jsonls'].setup {
  capabilities = capabilities
}
require('lspconfig')['eslint'].setup {
  capabilities = capabilities
}
require('lspconfig')['cssls'].setup {
  capabilities = capabilities
}
require('lspconfig')['awk_ls'].setup {
  capabilities = capabilities
}
require('lspconfig')['html'].setup {
  capabilities = capabilities
}
require('lspconfig')['angularls'].setup {
  capabilities = capabilities
}
require('lspconfig')['dockerls'].setup {
  capabilities = capabilities
}
require('lspconfig')['cssmodules_ls'].setup {
  capabilities = capabilities
}
require('lspconfig')['stylelint_lsp'].setup {
  capabilities = capabilities
}
require('lspconfig')['elixirls'].setup {
  capabilities = capabilities
}
require('lspconfig')['gopls'].setup {
  capabilities = capabilities
}
require('lspconfig')['bashls'].setup {
  capabilities = capabilities
}
require('lspconfig')['diagnosticls'].setup {
  capabilities = capabilities
}
