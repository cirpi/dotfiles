local o = vim.opt
local g = vim.g

o.number = true
g.mapleader = " "
o.fillchars:append({ eob = " " })
o.relativenumber = true
o.expandtab = true
o.termguicolors = true
vim.opt.termguicolors = true
vim.g.everforest_background = "medium"
vim.g.everforest_ui_contrast = "high"
vim.g.everforest_visual = "green"
vim.g.everforest_transparent_background = 0
o.wrap = false
o.tabstop = 4
o.shiftwidth = 4
o.numberwidth=1
o.backup = false
o.writebackup = false
o.signcolumn = "yes"
-- o.foldmethod = "expr"
-- o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
o.filetype = "on"
o.ignorecase = true
-- o.list = true
-- o.listchars = "space:\\u2022,tab:\\u21dc\\u2053\\u21dd,eol:\\u2937"

-- let @c="<80>kb[ ] ^["


-- make nvim and os clipboard play nicely with each other
o.clipboard = "unnamedplus"
o.undodir = "/home/sirpi/vim_undo"
o.undofile = true

-- remember 30 items in cmd history
o.history = 30

o.shell = "/bin/bash"

-- Number of screen lines to keep at the top and bottom of the cursor
o.scrolloff = 10

vim.lsp.util.make_floating_popup_options(100, 50, {});


return {}




