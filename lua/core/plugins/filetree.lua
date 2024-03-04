return {
  {
    'nvim-tree/nvim-tree.lua',

    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },

    keys = { {'<leader>vf', '<cmd>NvimTreeToggle<cr>', noremap = true, silent = true, desc = 'toggle filetree'}},

    config = function()
      local nvimtree = require('nvim-tree')
      nvimtree.setup()
    end,

    lazy = true
  },
  {
    'nvim-neo-tree/neo-tree.nvim',

    branch = 'v3.x',

    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim'
    },

    keys = {
      { '<leader>vf', '<cmd>Neotree toggle<cr>', noremap = true, silent = true, desc = 'toggle neotree' },
    },

    config = function()
      local nvimtree = require('neo-tree')
      nvimtree.setup()
    end,

    lazy = false,
    enabled = false
  }
}
