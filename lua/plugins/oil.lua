-- https://github.com/stevearc/oil.nvim

return {
  {
    "stevearc/oil.nvim",
    ---@module "oil"
    ---@type oil.SetupOpts
    opts = {
      view_options = {
        show_hidden = true,
      },
      skip_confirm_for_simple_edits = true,
    },
    keys = {
      {
        "-",
        function()
          require("oil").open()
        end,
        desc = "Open parent directory in Oil",
      },
    },
    config = function(_, opts)
      require("oil").setup(opts)
    end,
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    lazy = false,
  },
}
