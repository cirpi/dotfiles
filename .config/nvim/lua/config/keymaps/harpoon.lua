vim.keymap.set("n", "<leader>af", ":lua require('harpoon.mark').add_file()<CR>", { desc = "Add the current file to harpoon list.", silent = true })
vim.keymap.set("n", "<leader>sl", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Add the current file to harpoon list.", silent = true })
vim.keymap.set("n", "<leader>hn", ":lua require('harpoon.ui').nav_next()<CR>", { desc = "Add the current file to harpoon list.", silent = true })
vim.keymap.set("n", "<leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>", { desc = "Add the current file to harpoon list.", silent = true })
return {}
