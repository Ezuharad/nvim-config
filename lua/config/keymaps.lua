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

-- jump half page
map('n', '<c-u>', '<c-u>zz')
map('n', '<c-d>', '<c-d>zz')

-- arrow keys
map('n', '<up>', '<nop>')
map('n', '<down>', '<nop>')
map('n', '<left>', '<nop>')
map('n', '<right>', '<nop>')

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
