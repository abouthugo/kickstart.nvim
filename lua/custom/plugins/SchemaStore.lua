return {
  'b0o/schemastore.nvim',
  config = function()
    require('lspconfig').jsonls.setup {
      settings = {
        json = {
          schemas = require('schemastore').json.schemas {
            select = { 'package.json', 'tsconfig.json' },
          },
          validate = { enable = true },
        },
      },
    }
  end,
}
