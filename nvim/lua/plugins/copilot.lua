return {
  {
    "github/copilot.vim",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap("i", "<C-y>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
      vim.api.nvim_set_keymap("i", "<C-e>", "copilot#Dismiss()", { silent = true, expr = true })
      vim.api.nvim_create_user_command("ToggleCopilot", function()
        if copilot_enabled then
          vim.cmd("Copilot disable")
          print("Copilot Disabled")
          copilot_enabled = false
        else
          vim.cmd("Copilot enable")
          print("Copilot Enabled")
          copilot_enabled = true
        end
      end, {})
      vim.keymap.set("n", "<leader>at", ":ToggleCopilot<CR>", { desc = "Toggle Copilot" })
    end,
  },
}
