return {
  {
    'nvim-telescope/telescope.nvim',

    tag = '0.1.5',

    dependencies = {
      'nvim-lua/plenary.nvim'
    },

    keys = {
      { '<leader>ff', require('telescope.builtin').find_files, noremap = true, silent = true, desc = 'search files' },
      { '<leader>fg', require('telescope.builtin').live_grep,  noremap = true, silent = true, desc = 'search in file' }
    },

    lazy = true
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require('telescope').setup({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown({})
          }
        }
      })

      require('telescope').load_extension('ui-select')
    end,

    lazy = true
  }
}
