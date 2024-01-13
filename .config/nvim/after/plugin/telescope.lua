local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

local cbff = function()
    --local opt = require('telescope.themes').get_ivy({ sorting_strategy = "ascending", propmpt_position = "bottom" })
    --bbuiltin.current_buffer_fuzzy_find(opt)
    builtin.current_buffer_fuzzy_find()
end

vim.keymap.set('n', '<C-f>', cbff)
