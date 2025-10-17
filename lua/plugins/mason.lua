-- package list:
-- https://mason-registry.dev/registry/list

return {
  {
    "mason-org/mason.nvim",
    opts = {
      -- before adding anything to mason via this method, check if it is available
      -- as a lazyvim extra first and use that instead
      ensure_installed = {
        -- dart
        "dart-debug-adapter",
        -- html
        "emmet-language-server",
      },
    },
  },
}
