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

