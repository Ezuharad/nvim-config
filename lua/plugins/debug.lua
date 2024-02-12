return {
  {
    'mfussenegger/nvim-dap-python',
    config = function()
      require('dap-python').setup('/usr/bin/python')
    end
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = {
      'mfussenegger/nvim-dap'
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
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

      -- set keybinds
      vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, {})
      vim.keymap.set('n', '<leader>dc', dap.continue, {})
      vim.keymap.set('n', '<leader>dd', dap.step_over, {})
      vim.keymap.set('n', '<leader>dj', dap.step_into, {})
      vim.keymap.set('n', '<leader>dk', dap.step_out, {})
      vim.keymap.set('n', '<leader>dh', dap.step_back, {}) -- TODO: check if supported
    end
  },
  {
    'folke/neodev.nvim',
    opts = {},
    config = function()
      require("neodev").setup({
        library = {
          plugins = { "nvim-dap-ui" },
          types = true
        },
      })
    end
  }
}
