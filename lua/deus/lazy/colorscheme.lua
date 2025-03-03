function ColorMyPencils(color)
  color = color or "gruber-darker"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e2e", fg = "#cdd6f4" }) -- Set hover background and foreground
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1e1e2e", fg = "#f38ba8" }) -- Set hover border colorsend
end

return {
  {
    "blazkowolf/gruber-darker.nvim",
    -- name = "tokyonight",
    --"ellisonleao/gruvbox.nvim",
    --name = "gruvbox",
    priority = 1000,
    config = function()
      require("gruber-darker").setup({
        opt = {
          bold = false,
          italic = {
            strings = false,
          }
        }
      })
      ColorMyPencils()
    end,
  },
}
