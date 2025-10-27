return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "html", "css", "scss" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        emmet_language_server = {},
        cssls = {},
        css_variables = {},
        cssmodules_ls = {},
      },
    },
  },
}
