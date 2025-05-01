return {
    {
    "rebelot/kanagawa.nvim",
    lazy = false,
        config = function ()
            vim.cmd.colorscheme 'kanagawa-dragon'
        end
    -- config  = function ()
    --     local hour = tonumber(os.date("%H"))
    --     if hour  >= 18 then
    --         vim.cmd.colorscheme("kanagawa-dragon")
    --     else
    --         vim.cmd.colorscheme("kanagawa-lotus")
    --     end
    -- end
    }
}
