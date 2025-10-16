-- https://github.com/stevearc/oil.nvim

return {
  {
    "folke/snacks.nvim",
    keys = {
      -- make sure snacks keybinds that we are replacing aren't active
      { "<leader>e", false },
      { "<leader>E", false },
    },
  },
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
      -- - = default oil behaviour
      {
        "-",
        function()
          require("oil").open()
        end,
        desc = "File explorer (parent)",
      },
      -- leader + e = open root (mirrors default snacks behaviour)
      {
        "<leader>e",
        function()
          local root = require("lazyvim.util").root()
          require("oil").open(root)
        end,
        desc = "File Explorer (root)",
      },
      -- leader + E = open cwd (mirrors default snacks behaviour)
      {
        "<leader>E",
        function()
          require("oil").open(vim.fn.getcwd())
        end,
        desc = "File Explorer (cwd)",
      },
    },
    config = function(_, opts)
      require("oil").setup(opts)
    end,
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
