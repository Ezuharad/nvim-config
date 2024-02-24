return {
  'nvimtools/none-ls.nvim',
  keys = {
    { '<leader>mf', vim.lsp.buf.format, noremap = true, silent = true, desc = 'Format file' }
  },
  config = function()
    local null_ls = require('null-ls')
    null_ls.setup({
      -- c and c++
      null_ls.builtins.diagnostics.clang_check,

      -- lua
      null_ls.builtins.formatting.stylua,

      -- Haskell
      null_ls.builtins.formatting.brittany,

      -- python
      null_ls.builtins.formatting.black,
      null_ls.builtins.diagnostics.ruff
    })
  end
}
