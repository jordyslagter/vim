-- Adds tools for working with java

return {
  -- depends on the java language extra provided by LazyVim
  { import = "lazyvim.plugins.extras.lang.java" },
  {
    "mason-org/mason.nvim",
    optional = true,
    opts = {
      ensure_installed = {
        "google-java-format",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        java = { "google-java-format", lsp_format = "fallback" },
      },
    },
  },
}
