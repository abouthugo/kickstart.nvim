return {
  'sindrets/diffview.nvim',
  config = function()
    vim.keymap.set('n', '<leader>gdo', function()
      vim.cmd ':DiffviewOpen'
    end, { desc = 'Open DiffView' })

    vim.keymap.set('n', '<leader>gdc', function()
      vim.cmd ':DiffviewClose'
    end, { desc = 'Close DiffView' })

    vim.keymap.set('n', '<leader>gdt', function()
      vim.cmd ':DiffviewToggleFile'
    end, { desc = 'Toggle Files' })

    vim.keymap.set('n', '<leader>gdh', function()
      vim.cmd ':DiffviewFileHistory %'
    end, { desc = 'Current File DiffView' })
  end,
}
