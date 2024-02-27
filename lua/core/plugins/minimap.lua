-- code minimap
return {
  {
    'gorbit99/codewindow.nvim',

    config = function()
      local codewindow = require('codewindow')
      codewindow.setup()

      vim.keymap.set('n', '<leader>vm', codewindow.toggle_minimap, { noremap = true, silent = true, desc =
      'toggle minimap' })
    end,
  }
}
