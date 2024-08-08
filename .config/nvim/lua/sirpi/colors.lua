function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#646f68' })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#b9baaa', bold = true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#646f68' })
end

LineNumberColors()
