-- Show function signatures while editing
return {
  {
    'ray-x/lsp_signature.nvim',

    event = 'VeryLazy',

    opts = {
      bind=true,
      handler_opts = {
        border='rounded'
      }
    },

    config = function()
      local signature = require('lsp_signature')
      signature.setup()
    end
  }
}
