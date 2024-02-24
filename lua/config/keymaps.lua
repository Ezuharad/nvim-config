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

map('n', '[p', '<Cmd>call search(\'[(]\')<CR>', {desc = 'jump to next ('})
map('n', '[o', '<Cmd>call search(\'[{]\')<CR>', {desc = 'jump to next {'})
map('n', '[i', '<Cmd>call search(\'[[]\')<CR>', {desc = 'jump to next ['})
map('n', '[u', '<Cmd>call search(\'[<]\')<CR>', {desc = 'jump to next <'})

map('n', '<Up>', '<C-w><Up>', {desc = 'move up window'})
map('n', '<Down>', '<C-w><Down>', {desc = 'move down window'})
map('n', '<Left>', '<C-w><Left>', {desc = 'move left window'})
map('n', '<Right>', '<C-w><Right>', {desc = 'move right window'})

map('i', '<Up>', '<Nop>')
map('i', '<Down>', '<Nop>')
map('i', '<Left>', '<Nop>')
map('i', '<Right>', '<Nop>')

map('v', '<Up>', '<Nop>')
map('v', '<Down>', '<Nop>')
map('v', '<Left>', '<Nop>')
map('v', '<Right>', '<Nop>')
