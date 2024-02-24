return {
  'shaunsingh/nord.nvim',
  config = function()
    require('nord').set()

    require("nord").bufferline.highlights({
      italic = true,
      bold = true,
    })
  end
}
