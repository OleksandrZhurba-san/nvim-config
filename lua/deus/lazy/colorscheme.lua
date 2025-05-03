function ColorMyPencils(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)

  -- Style only the float windows (like LSP hovers)
  --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e2e", fg = "#cdd6f4" })
  --vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1e1e2e", fg = "#f38ba8" })

  -- Ensure main UI is transparent
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
  vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
  --
  -- Add borders to LSP hover and signature help
  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover,
    { border = "rounded" }
  )

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help,
    { border = "rounded" }
  )
end

return {
  {
    --"catppuccin/nvim",
    --name = "catppuccin",
    "folke/tokyonight.nvim",
    name = "tokyonight",
    --"ellisonleao/gruvbox.nvim",
    --name = "gruvbox",
    priority = 1000,
    config = function()
      require("tokyonight").setup({
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
