local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_exand(args.body)
    end,
  },

  formatting = {
    format = lspkind.cmp_format({with_text = false, maxwidth = 50})
  },

  sources = {
    { name = 'cmp_nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'path' },
    { name = 'luasnip' },
    { name = 'buffer', keyword_length = 5 },
  },

  experimental = {
    native_menu = false,
    ghost_text = true,
  },

})

