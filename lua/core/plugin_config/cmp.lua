local cmp = require('cmp')

cmp.setup({
 snippet = {
   expand = function(args)
     vim.fn['vsnip#anonymous'](args.body)
   end,
 },
 window = {
   completion = cmp.config.window.bordered(),
 },
 mapping = cmp.mapping.present.insert({
 }),
 sources = cmp.config.sources({
   { name = 'nvim_lsp' },
   { name = 'vsnip' },
 }, {
   { name = 'buffer' },
 })
})

cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' },
  }, {
    { name = 'buffer' },
  })
})

cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' },
  }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['clangd'].setup {
  capabilities = capabilities
}
