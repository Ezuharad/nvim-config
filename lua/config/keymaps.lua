-- keybinding configurations
vim.g.mapleader = ' '

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    if opts.desc then
      opts.desc = "config.keymaps.lua: " .. opts.desc
    end
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

map('n', '[p', '<cmd>call search(\'[(]\')<cr>', { desc = 'jump to next (' })
map('n', '[o', '<cmd>call search(\'[{]\')<cr>', { desc = 'jump to next {' })
map('n', '[i', '<cmd>call search(\'[[]\')<cr>', { desc = 'jump to next [' })
map('n', '[u', '<cmd>call search(\'[<]\')<cr>', { desc = 'jump to next <' })

-- arrow keys
map('n', '<up>', '<c-w><up>', { desc = 'move up window' })
map('n', '<down>', '<c-w><down>', { desc = 'move down window' })
map('n', '<left>', '<c-w><left>', { desc = 'move left window' })
map('n', '<right>', '<c-w><right>', { desc = 'move right window' })

map('i', '<up>', '<nop>')
map('i', '<down>', '<nop>')
map('i', '<left>', '<nop>')
map('i', '<right>', '<nop>')

map('v', '<up>', '<nop>')
map('v', '<down>', '<nop>')
map('v', '<left>', '<nop>')
map('v', '<right>', '<nop>')

-- autoclose braces
-- map('i', '\"', '\"\"<esc>i')
-- map('i', '\'', '\'\'<esc>i')
-- map('i', '(', '()<esc>i')
-- map('i', '[', '[]<esc>i')
-- map('i', '{', '{}<esc>i')

-- map('i', '()')
