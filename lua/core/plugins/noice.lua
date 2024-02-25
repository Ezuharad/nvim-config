-- UI plugin
return {
  {
    'rcarriga/nvim-notify',

    config = function()
      vim.notify = require('notify')
    end,

    lazy = false
  },
  {
    'folke/noice.nvim',

    event = 'VeryLazy',

    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  }
}
