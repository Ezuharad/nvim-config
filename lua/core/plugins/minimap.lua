-- code minimap
return {
  {
    'wfxr/minimap.vim',

    keys = {
      { '<leader>vm', '<cmd>MinimapToggle<cr>', noremap=true, silent=true, desc='toggle minimap' }
    },

    lazy = true
  }
}
