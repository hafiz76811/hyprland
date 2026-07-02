return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path"
  },
  config = function()
    local cmp = require'cmp'
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = 'buffer' },
        { name = 'path' },
      }),
    })
  end,
}
