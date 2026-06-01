local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function ()
    builtin.find_files(
    {
    }
    )
end, { silent = true })

vim.keymap.set('n', '<leader>bb', function()
    local builtin = require('telescope.builtin')
    builtin.buffers(
    {
    show_all_buffers=true,
    sort_mru = true,
    }
    )
end, {silent = true })

vim.keymap.set('n', '<leader>hh', function()
    builtin.help_tags()
end, { silent = true })

vim.keymap.set('n', '<leader>gg', function()
    builtin.live_grep({
    })
end, { silent = true })

vim.keymap.set('n', '<leader>sG', function()
    builtin.live_grep({
        glob_pattern = "*.go",
        cwd = '/home/sirpi/'
    })
end)

vim.keymap.set('n', '<leader>/', ':Telescope current_buffer_fuzzy_find<CR>', {silent=true})

vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references)
vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions)
vim.keymap.set("n", "<leader>gt", ':Telescope git_status<CR>', {silent=true})
vim.keymap.set("n", "<leader>gb", ':Telescope git_branches<CR>', {silent=true})
vim.keymap.set("n", "<leader>of", ':Telescope oldfiles<CR>', {silent=true})
vim.keymap.set("n", "ml", ':Telescope bookmarks list<CR>', {silent=true})
return {}
