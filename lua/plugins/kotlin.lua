return {
  -- depends on the kotlin language extra provided by LazyVim
  { import = "lazyvim.plugins.extras.lang.kotlin" },
  {
    "neovim/nvim-lspconfig",
    optional = true,
    opts = function(_, opts)
      -- remove kotlin_language_server from the options (it is included in the
      -- LazyVim extra) and instead use kotlin_lsp. kotlin_language_server is
      -- deprecated and itself recommends kotlin_lsp in its README
      opts.servers = opts.servers or {}
      opts.servers.kotlin_language_server = nil
      opts.servers.kotlin_lsp = {}
      return opts
    end,
  },
}
