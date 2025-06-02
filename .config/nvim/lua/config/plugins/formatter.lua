local prettier = function()
  return {
    exe = "prettier",
    args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
    stdin = true,
  }
end

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
                },
                yaml = { prettier },
                javascript = { prettier },
                typescript = { prettier },
                html = { prettier },
                css = { prettier },
                scss = { prettier },
                json = { prettier },
                markdown = { prettier },
                jsx = { prettier },
                xml = {
                    function()
                        return {
                            exe = "xmlformat",
                            args = { vim.api.nvim_buf_get_name(0) },
                            stdin = true,
                        }
                     end
                }
            }
        }
    end
}
