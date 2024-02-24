return {
  {
    'lewis6991/gitsigns.nvim',

    keys = {
      {'<leader>gp', ':Gitsigns preview_hunk, <CR>', noremap = true, silent=true, desc='preview git hunk'}
    },

    config = function()
      require('gitsigns').setup()
    end,
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

    config = true
  },
  {
    'kdheepak/lazygit.nvim',

    dependencies = {
      'nvim-lua/plenary.nvim'
    },

    lazy = true
  }
}
