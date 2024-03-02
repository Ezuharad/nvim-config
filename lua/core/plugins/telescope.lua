return {
  {
    'nvim-telescope/telescope.nvim',

    tag = '0.1.5',

    dependencies = {
      'nvim-lua/plenary.nvim'
    },

    keys = {
      { '<leader>ff', require('telescope.builtin').find_files, noremap = true, silent = true, desc = 'search files' },
      { '<leader>fg', require('telescope.builtin').live_grep,  noremap = true, silent = true, desc = 'search in file' },
      { '<leader>fb', require('telescope.builtin').buffers, noremap = true, silent = true, desc = 'search vim buffers' },
      { '<leader>fs', require('telescope.builtin').lsp_document_symbols, noremap = true, silent = true, desc = 'search document symbols'},
      { '<leader>fd', require('telescope.builtin').diagnostics, noremap = true, silent = true, desc = 'search diagnostics'},
    },

    lazy = true
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      local telescope = require('telescope')
      telescope.setup({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown({})
          }
        }
      })

      telescope.load_extension('ui-select')
    end,

    lazy = true
  }
}
