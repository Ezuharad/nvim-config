return {
  "ThePrimeagen/harpoon",

  branch = "harpoon2",

  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    local harpoon = require("harpoon")

    harpoon.setup()

    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():append()
    end, { noremap = true, silent = true, desc = "append to harpoon list" })
    vim.keymap.set("n", "<leader>hf", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { noremap = true, silent = true, desc = "view harpoon list" })
    vim.keymap.set("n", "<leader>hh", function()
      harpoon:list():prev()
    end, { noremap = true, silent = true, desc = "jump to previous harpoon item" })
    vim.keymap.set("n", "<leader>hl", function()
      harpoon:list():next()
    end, { noremap = true, silent = true, desc = "jump to next harpoon item" })
  end,

  lazy = false,
}
