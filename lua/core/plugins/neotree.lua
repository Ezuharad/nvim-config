return {
  {
    'nvim-neo-tree/neo-tree.nvim',

    branch = 'v3.x',

    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim'
    },

    keys = {
      { '<leader>vf', '<cmd>Neotree filesystem reveal left<cr>', noremap = true, silent = true, desc = 'toggle neotree' },
    },

    config = function()
      local nvimtree = require('neo-tree')
      nvimtree.setup()
    end,

    lazy = false
  }
}
