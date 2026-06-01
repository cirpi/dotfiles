return {
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({
                "*" -- apply to all filetypes
            }, {
                RGB = true,        -- #RGB hex codes
                RRGGBB = true,     -- #RRGGBB hex codes
                names = true,      -- "red", "blue", etc.
                RRGGBBAA = true,  -- #RRGGBBAA
                AARRGGBB = true,  -- 0xAARRGGBB
                css = true,        -- enable css features
                css_fn = true,     -- rgb(), rgba(), etc.
            })
        end
    }
}
