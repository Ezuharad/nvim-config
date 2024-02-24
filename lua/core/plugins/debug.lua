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
      local function map(mode, lhs, rhs, opts)
        local options = { noremap = true, silent = true }
        if opts then
          if opts.desc then
            opts.desc = "plugins.debug.lua: " .. opts.desc
          end
          options = vim.tbl_extend('force', options, opts)
        end
        vim.keymap.set(mode, lhs, rhs, options)
      end

      map('n', '<leader>dt', dap.toggle_breakpoint, { desc = 'toggle breakpoint' })
      map('n', '<leader>dc', dap.continue, { desc = 'continue' })
      map('n', '<leader>dl', dap.step_over, { desc = 'step over' })
      map('n', '<leader>dj', dap.step_into, { desc = 'step into' })
      map('n', '<leader>dk', dap.step_out, { desc = 'step out' })
      map('n', '<leader>dh', dap.step_back, { desc = 'step back' })  -- TODO: check if supported
      map('n', '<leader>dq', dap.close, { desc = 'stop debugger' })
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
