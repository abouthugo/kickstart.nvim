return {
  'tpope/vim-fugitive',
  config = function()
    local Fugitive_Group = vim.api.nvim_create_augroup('Fugitive_Group', {})
    vim.keymap.set('n', '<leader>gs', function()
      vim.cmd ':0G'
    end, { desc = 'Open Git' })
    local autocmd = vim.api.nvim_create_autocmd
    autocmd('BufWinEnter', {
      group = Fugitive_Group,
      pattern = '*',
      callback = function()
        if vim.bo.ft ~= 'fugitive' then
          return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = { buffer = bufnr, remap = false }
        vim.keymap.set('n', '<leader>p', function()
          vim.cmd.Git 'push'
        end, opts)

        -- rebase always
        vim.keymap.set('n', '<leader>P', function()
          vim.cmd.Git { 'pull --rebase' }
        end, opts)
      end,
    })
  end,
}
