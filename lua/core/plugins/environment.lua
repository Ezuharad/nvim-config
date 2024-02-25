-- Managing code execution environments
return {
  {
    'linux-cultist/venv-selector.nvim',

    dependencies = {
      'neovim/nvim-lspconfig',
      'nvim-telescope/telescope.nvim',
      'mfussenegger/nvim-dap-python',
      'mfussenegger/nvim-dap'
    },

    opts = {
      dap_enabled = true,
      name = {'.conda'},
      path = '~/Code/',
      parents = 0,
      anaconda_base_path = '/opt/mambaforge',
      anaconda_envs_path = '~/.conda/envs'
    },

    event='VeryLazy',

    keys = {
      {'<leader>es', '<cmd>VenvSelect<CR>', noremap=true, silent=true, desc='search virtual environments'},
      {'<leader>ec', '<cmd>VenvSelectCached<CR>', noremap=true, silent=true, desc='activate cached virutal environment'}
    }
  }
}
