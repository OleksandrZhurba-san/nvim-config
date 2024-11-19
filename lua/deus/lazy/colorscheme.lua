function ColorMyPencils(color)
  color = color or "gruvbox"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e2e", fg = "#cdd6f4" }) -- Set hover background and foreground
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1e1e2e", fg = "#f38ba8" }) -- Set hover border colorsend
end

return {
  {
    --"folke/tokyonight.nvim",
    --name = "tokyonight",
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    config = function()
      ColorMyPencils()
    end
  },
}
