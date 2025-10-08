-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Use relative line numbers
vim.api.nvim_create_user_command("ToggleLineNumbers", function()
  if vim.opt.number:get() then
    vim.opt.relativenumber = false
    vim.opt.number = false
  else
    vim.opt.number = true
  end
end, {})

vim.api.nvim_create_user_command("ToggleRelativeLineNumbers", function()
  if vim.opt.relativenumber:get() then
    vim.opt.relativenumber = false
  else
    vim.opt.relativenumber = true
  end
end, {})

vim.api.nvim_create_user_command("TelescopeSearchDocumentFunctions", function()
  require("telescope.builtin").lsp_document_symbols({
    symbols = {
      "Function",
      "Method",
    },
  })
end, { desc = "List functions in current file in telescope" })

vim.api.nvim_create_user_command("TelescopeSearchWorkspaceFunctions", function()
  require("telescope.builtin").lsp_workspace_symbols({
    symbols = {
      "Function",
      "Method",
    },
  })
end, { desc = "List functions in workspace in telescope" })

-- LSP configs

-- Toggle git blame
vim.keymap.set("n", "<space>gb", "<cmd>GitBlameToggle<CR>")

-- Toggle line numbers
vim.keymap.set("n", "<space>n", "<cmd>ToggleLineNumbers<CR>")

-- Toggle relative line numbers
vim.keymap.set("n", "<space>r", "<cmd>ToggleRelativeLineNumbers<CR>")

-- Comment/uncomment
vim.keymap.set("n", "<space>/", "gc", { desc = "Comment selected code" })

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Live reload Lua code/config
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>", { desc = "Source the current file" })
vim.keymap.set("n", "<space>lx", ":.lua<CR>", { desc = "Execute selected lua code" })

-- Quickfix movement
vim.keymap.set("n", "N", "<cmd>cnext<CR>")
vim.keymap.set("n", "P", "<cmd>cprev<CR>")
vim.keymap.set("n", "<C-S-q>", "<cmd>cclose<CR>")

-- lsp
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" })
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Go to declaration" })
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Go to implementation" })
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Go to references" })
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Show hover" })
vim.keymap.set("n", "gh", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Show diagnostic" })
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "Rename" })
vim.keymap.set("n", "Q", "<cmd>Telescope cmdline<cr>", { desc = "Cmdline" })
vim.keymap.set("n", ":", "<cmd>Telescope cmdline<cr>", { desc = "Cmdline" })

-- telescope function search
vim.keymap.set("n", "<leader>sm", "<cmd>TelescopeSearchDocumentFunctions<CR>", { desc = "[S]earch document [m]ethods" })
vim.keymap.set(
  "n",
  "<leader>sM",
  "<cmd>TelescopeSearchWorkspaceFunctions<CR>",
  { desc = "[S]earch workspace [M]ethods" }
)

-- -- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
