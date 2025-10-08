return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    config = function()
      vim.api.nvim_set_keymap("n", "<leader>ac", ":CopilotChatClose<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>am", ":CopilotChat<CR>", { noremap = true, silent = true })
    end,
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
