return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function() 
			require("lualine").setup {
                tabline = {
                    lualine_a = {'buffers'},
                },
                options = {
                    theme = 'seoul256'
                }
            };
		end
	}
}
