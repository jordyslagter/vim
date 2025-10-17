return {
  {
    "nvim-mini/mini.files",
    opts = {
      use_as_default_explorer = true,
    },
    keys = {
      {
        "-",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (Directory of Current File)",
      },
    },
  },
}
