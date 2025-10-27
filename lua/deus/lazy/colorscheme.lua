function ColorMyPencils(color)
  color = color or "kanagawa"
  vim.cmd.colorscheme(color)

  -- Style only the float windows (like LSP hovers)
  vim.api.nvim_set_hl(1, "NormalFloat", { bg = "#1e1e2e", fg = "#cdd6f4" })
  vim.api.nvim_set_hl(1, "FloatBorder", { bg = "#1e1e2e", fg = "#f38ba8" })

  -- Ensure main UI is transparent
  --[[ vim.api.nvim_set_hl(1, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(1, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(1, "SignColumn", { bg = "none" })
  vim.api.nvim_set_hl(1, "VertSplit", { bg = "none" })
  vim.api.nvim_set_hl(1, "StatusLine", { bg = "none" }) ]]

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
    -- "folke/tokyonight.nvim",
    -- name = "tokyonight",
    --"ellisonleao/gruvbox.nvim",
    --name = "gruvbox",
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        compile = true,
        commentStyle = { italic = false },
        theme = "dragon",
        --[[ contrast = "hard",
        opt = {
          bold = false,
          italic = {
            strings = false,
          }
        } ]]
      })
      ColorMyPencils()
    end,
  },
}
