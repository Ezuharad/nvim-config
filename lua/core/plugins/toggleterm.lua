return {
  {
    'akinsho/toggleterm.nvim',

    version = '*',

    keys = {
      { '<leader>wt', ':ToggleTerm <CR>', noremap = true, silent = true, desc = 'toggle terminal' }
    },

    config = function()
      local toggleterm = require('toggleterm')
      toggleterm.setup({
        insert_mapping = false,
        shell = 'zsh'
      })
    end
  }
}
