-- Adds tools for working with static web files

return {
  -- depends on the typescript language extra provided by LazyVim
  { import = "lazyvim.plugins.extras.lang.typescript" },
  -- depends on the json language extra provided by LazyVim
  { import = "lazyvim.plugins.extras.lang.json" },
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = {
      ensure_installed = { "html", "css", "scss" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    optional = true,
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
