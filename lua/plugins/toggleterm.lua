return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup({
      shell = 'zsh'
    })

    vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>')
  end
}

