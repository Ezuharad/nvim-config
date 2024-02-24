-- generative AI modules
COPILOT_IS_ACTIVE = false
local function toggle_copilot()
  if COPILOT_IS_ACTIVE then
    vim.cmd('Copilot disable')
    COPILOT_IS_ACTIVE = false
  else
    vim.cmd('Copilot enable')
    COPILOT_IS_ACTIVE = true
  end
end

return {
  {
    'github/copilot.vim', -- GitHub Copilot

    keys = {
      { '<leader>cg', ':Copilot <CR>', noremap = true, silent = true, desc = 'generate suggestions' },
      { '<leader>ct', toggle_copilot,  noremap = true, silent = true, desc = 'toggle assistant' }
    },

    build = ':Copilot setup',

    config = function()
      vim.cmd('Copilot disable')
    end,
  }
}