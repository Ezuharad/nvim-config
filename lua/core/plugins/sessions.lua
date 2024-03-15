-- sessions management
return {
  "rmagatti/auto-session",

  config = function()
    local auto_session = require("auto-session")
    auto_session.setup({
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Code", "~/Downloads" },
      session_lens = {
        buftypes_to_ignore = {},
        load_on_setup = true,
        theme_conf = {
          border = true,
        },
        previewer = false,
      },
    })
    local session_lens = require("auto-session.session-lens")

    -- keymaps
    -- vim.keymap.set('n', '<leader>fs', session_lens.search_session, { noremap = true, silent = true, desc = 'search sessions' })
  end,
}
