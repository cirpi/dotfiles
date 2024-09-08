local go_augroup = vim.api.nvim_create_augroup("gocommands", { clear = true })
local c_group = vim.api.nvim_create_augroup('ccommands', {clear=true})
local web_group = vim.api.nvim_create_augroup('web_commands', {clear=true})
local haskell_group = vim.api.nvim_create_augroup('haskell_commands', {clear=true})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    group = go_augroup,
    pattern = "*.go",
    callback = function()
        vim.schedule(function()
            file = GetCurrentFile()
            cmd = string.format('silent !goimports -w %s', file)
            vim.api.nvim_command(cmd)
        end)
    end
})

vim.api.nvim_create_autocmd({'BufWritePost'}, {
    pattern = {"*.css", "*.svelte", "*.html", "*.js", "*.ts"},
    group = web_group,
    callback = function ()
        file = GetCurrentFile()
        cmd = string.format('silent !prettier -w %s', file)
        vim.api.nvim_command(cmd)
    end
})

vim.api.nvim_create_autocmd({'BufWritePost'}, {
    pattern = {"*.c", "*.cpp", "*.h", "*.hpp"},
    group = c_group,
    callback = function ()
        file = GetCurrentFile()
        cmd = string.format('silent !clang-format -i %s', file)
        vim.api.nvim_command(cmd)
    end
})


function isTerm(path)
    return string.sub(path, string.len(path) - 8 + 1, string.len(path)) == "/usr/bin"
end

-- Change crrent directory
require("sirpi.commands")
vim.api.nvim_create_autocmd('BufEnter', {
    pattern = "*",
    callback = function()
        vim.schedule(function()
            ChangeCurrentDirectory()
            -- vim.cmd("message clear")
        end)
    end
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    group = haskell_group,
    pattern = "*.hs",
    callback = function()
        vim.schedule(function()
            file = GetCurrentFile()
            cmd = string.format('silent !hfmt -w %s', file)
            vim.api.nvim_command(cmd)
        end)
    end
})
