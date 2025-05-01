return {
    "mhartington/formatter.nvim",
    config = function()
        require("formatter").setup {
            filetype = {
                go = {
                    function()
                        return {
                            exe = "goimports",
                            args = {"-w", vim.api.nvim_buf_get_name(0)},
                            stdin = false,
                        }
                    end
                },
                rust = {
                    function()
                        return {
                            exe = "rustfmt",
                            args = {vim.api.nvim_buf_get_name(0)},
                            stdin = false
                        }
                     end
                }
            }
        }
    end
}
