return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        dart_format = {
          args = { "format", "--line-length", "120", "$FILENAME" },
        },
      },
    },
  },
}
