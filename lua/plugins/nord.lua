return {
  'shaunsingh/nord.nvim',
  config = function()
    require('nord').set()

    local highlights = require("nord").bufferline.highlights({
      italic = true,
      bold = true,
    })
  end
}

