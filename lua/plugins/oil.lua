-- https://github.com/stevearc/oil.nvim

return {
  {
    "stevearc/oil.nvim",
    ---@module "oil"
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
      skip_confirm_for_simple_edits = true,
    },
    keys = {
      -- Open Oil in the current directory
      { "-", "<CMD>Oil<CR>", desc = "Open parent directory (Oil)" },
      -- Replace LazyVim's file explorer toggle
      { "<leader>e", "<CMD>Oil<CR>", desc = "File Explorer (Oil)" },
    },
    config = function(_, _)
      require("oil").setup()
    end,
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
