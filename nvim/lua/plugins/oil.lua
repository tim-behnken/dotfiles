return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      keys = {
        { "n", "-", "lua Oil.open({}, {preview={'vertical'}})" },
      },
      preview_win = {
        -- Enable automatic update on cursor movement
        update_on_cursor_moved = true,
        -- Choose how to open the preview window: "load", "scratch", or "fast_scratch"
        preview_method = "fast_scratch",
        -- Optionally disable preview on certain files (e.g., to avoid lag)
        -- disable_preview = function(filename)
        --   return false -- Return true to disable preview for specific filenames
        -- end,
        -- Set custom window options for the preview window
        win_options = {},
      },
      columns = {
        "icon",
      },
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
      },
      win_options = {
        winbar = "%{v:lua.require('oil').get_current_dir()}",
      },
      -- Optional dependencies
      dependencies = { { "echasnovski/mini.icons", opts = {} } },
      -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
      -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
      lazy = false,
    },
  },
}
