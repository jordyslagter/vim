-- Adds tools for working with static web files

return {
  -- depends on the typescript language extra provided by LazyVim
  { import = "lazyvim.plugins.extras.lang.typescript" },
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
        -- XML files such as SVGs
        lemminx = {},
      },
    },
  },
}
