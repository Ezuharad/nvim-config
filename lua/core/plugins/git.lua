return {
  {
    'lewis6991/gitsigns.nvim',

    keys = {
      { '<leader>gp', '<cmd>Gitsigns preview_hunk<cr>', noremap = true, silent = true, desc = 'preview git hunk' }
    },

    config = function()
      require('gitsigns').setup()
    end,

    lazy = false
  },
  {
    'tpope/vim-fugitive',
  },
  {
    'NeogitOrg/neogit',

    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },

    config = function()
    end
  },
  {
    'kdheepak/lazygit.nvim',

    dependencies = {
      'nvim-lua/plenary.nvim'
    },

    keys = {
      { '<leader>gg', '<cmd>LazyGit<cr>', noremap = true, silent = true, desc = 'open LazyGit' }
    },

    lazy = true
  }
}
