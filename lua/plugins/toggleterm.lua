return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    local toggleterm = require('toggleterm')
    toggleterm.setup({
      -- open_mapping = '<leader>tt', -- TODO why does this operate in normal mode?
      insert_mapping = false,
      shell = 'zsh'
    })

  vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>', {silent = true})
  end
}

