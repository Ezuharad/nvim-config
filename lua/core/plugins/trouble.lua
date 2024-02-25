-- listing for project issues
return {
  'folke/trouble.nvim',

  dependencies = { 'nvim-tree/nvim-web-devicons' },

  opts = {},

  config = function()
    local trouble = require('trouble')
    vim.keymap.set("n", "<leader>xx", function() trouble.toggle() end,
      { noremap = true, silent = true, desc = 'show trouble diagnostics' })
    vim.keymap.set("n", "<leader>xw", function() trouble.toggle("workspace_diagnostics") end,
      { noremap = true, silent = true, desc = 'show workspace diagnostics' })
    vim.keymap.set("n", "<leader>xd", function() trouble.toggle("document_diagnostics") end,
      { noremap = true, silent = true, desc = 'show document diagnostics' })
    vim.keymap.set("n", "<leader>xq", function() trouble.toggle("quickfix") end,
      { noremap = true, silent = true, desc = 'show quickfixes' })
    -- vim.keymap.set("n", "<leader>xl", function() trouble.toggle("loclist") end)
  end,

  lazy = false
}
