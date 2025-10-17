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
          require("mini.files").open()
        end,
        desc = "Open mini.files (Directory of Current File)",
      },
    },
  },
}
