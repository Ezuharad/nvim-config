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
      { '<leader>wf', ':Neotree filesystem reveal left<CR>', noremap=true, silent=true, desc = 'toggle neotree' },
    },

    config = function()
      local nvimtree = require('neo-tree')
      nvimtree.setup()
    end,

    lazy = true
  }
}
