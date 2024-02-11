return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",       -- required
      "sindrets/diffview.nvim",      -- optional - Diff integration

      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true
  }
}

