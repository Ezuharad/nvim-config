return {
  {
    'akinsho/toggleterm.nvim',

    version = '*',

    keys = {
      { '<leader>vt', '<cmd>ToggleTerm<cr>', noremap = true, silent = true, desc = 'toggle terminal' }
    },

    config = function()
      local toggleterm = require('toggleterm')
      toggleterm.setup({
        insert_mappings = false,
        terminal_mappings = true,
        shade_terminals = true,
        shell = 'zsh',
        size = 25
      })

      function _G.set_terminal_keymaps()
        local opts = { buffer = 0 }
        vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
        vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
      end

      vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')
    end,

    lazy = true
  },
}
