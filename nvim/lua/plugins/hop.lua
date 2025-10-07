return {
  {
    "smoka7/hop.nvim",
    init = function()
      vim.keymap.set("n", "<leader>w", "<cmd>HopWord<CR>", { desc = "Hop to word" })
      vim.keymap.set("n", "<leader>l", "<cmd>HopLine<CR>", { desc = "Hop to line" })
      vim.keymap.set("n", "<leader>c", "<cmd>HopChar2<CR>", { desc = "Hop to char" })
    end,

    version = "*",
    opts = {
      keys = "etovxqpdygfblzhckisuran",
    },
  },
}
