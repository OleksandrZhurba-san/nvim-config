function ColorMyPencils(color) 
    color = color or "lunaperche"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "maxmx03/solarized.nvim",
        name = "solarized",
        priority = 1000,
        config = function()
            vim.o.background = 'dark'
            --vim.o.colorscheme = 'solarized'
            vim.o.colorscheme = 'lunaperche'
            ColorMyPencils()
        end
    },
}
