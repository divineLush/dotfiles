local cmp = require'cmp'
local ls = require('luasnip')

cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    completion = {
      completeopt = 'menu,menuone,noinsert',
    },
    -- window = {
    --   completion = cmp.config.window.bordered(),
    --   documentation = cmp.config.window.bordered(),
    -- },
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
vim.lsp.enable('ts_ls')
vim.lsp.enable('sqls')
vim.lsp.enable('jsonls')
-- vim.lsp.enable('eslint')
-- vim.lsp.enable('cssls')
vim.lsp.enable('yamlls')
vim.lsp.enable('gopls')
-- vim.lsp.enable('html')
-- vim.lsp.enable('angularls')
vim.lsp.enable('dockerls')
-- vim.lsp.enable('cssmodules_ls')
-- vim.lsp.enable('stylelint_lsp')

vim.diagnostic.config({
  -- disable = true,
  -- signs = false,
  virtual_text = false,
  update_in_insert = false,
})
-- vim.cmd[[autocmd BufEnter * lua vim.diagnostic.disable()]]
