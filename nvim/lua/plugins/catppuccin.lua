return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato", -- Options: "latte", "frappe", "macchiato", "mocha"
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false, -- Set to true for a transparent background
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
