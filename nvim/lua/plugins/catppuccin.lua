return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Options: "latte", "frappe", "macchiato", "mocha"
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false, -- Set to true for a transparent background
      custom_highlights = function(colors)
        return {
          WinSeparator = { fg = colors.sapphire }, -- Change 'flamingo' to your desired Catppuccin color
        }
      end,
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
