return {
  'windwp/nvim-ts-autotag',
  ft = {
    'astro',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'html',
    'markdown',
  },
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}
