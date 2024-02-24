return {
  {
    'mfussenegger/nvim-dap-python',

    config = function()
      require('dap-python').setup('/usr/bin/python')
    end,

    lazy = true
  },
  {
    'mfussenegger/nvim-dap',

    config = function()
      local dap = require('dap')

      vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, { noremap = true, silent = true, desc =
      'toggle breakpoint' })                                                                                          -- TODO: why can't we use keys property?
      vim.keymap.set('n', '<leader>dc', dap.continue, { noremap = true, silent = true, desc = 'continue debugging' })
      vim.keymap.set('n', '<leader>dl', dap.step_over, { noremap = true, silent = true, desc = 'step over' })
      vim.keymap.set('n', '<leader>dj', dap.step_into, { noremap = true, silent = true, desc = 'step into' })
      vim.keymap.set('n', '<leader>dk', dap.step_out, { noremap = true, silent = true, desc = 'step out' })
      vim.keymap.set('n', '<leader>dh', dap.step_back, { noremap = true, silent = true, desc = 'step back' })
      vim.keymap.set('n', '<leader>dq', dap.close, { noremap = true, silent = true, desc = 'stop debugger' })
    end,
  },
  {
    'rcarriga/nvim-dap-ui',

    dependencies = {
      'mfussenegger/nvim-dap'
    },

    config = function()
      local dap, dapui = require('dap'), require('dapui')
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      dapui.setup()
    end,

    lazy = true
  },
  {
    'folke/neodev.nvim',

    opts = {},

    config = function()
      require('neodev').setup({
        library = {
          plugins = { 'nvim-dap-ui' },
          types = true
        },
      })
    end,

    lazy = true
  }
}
