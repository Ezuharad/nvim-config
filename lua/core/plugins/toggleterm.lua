return {
  {
    'akinsho/toggleterm.nvim',

    version = '*',

    keys = {
      { '<leader>tt', ':ToggleTerm <CR>', noremap = true, silent = true, desc = 'toggle terminal' }
    },

    config = function()
      local toggleterm = require('toggleterm')
      toggleterm.setup({
        -- open_mapping = '<leader>tt', -- TODO: why does this operate in normal mode?
        insert_mapping = false,
        shell = 'zsh'
      })
    end
  }
}
