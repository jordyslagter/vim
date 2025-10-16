-- Possible installs are listed here:
-- https://mason-registry.dev/registry/list

return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- rust
        "rust-analyzer",
        -- docker
        "docker-language-server",
        -- haskell
        "haskell-language-server",
        -- javascript
        "typescript-language-server",
        "prettier",
        "tailwindcss-language-server",
        "vue-language-server",
        "svelte-language-server",
        -- dart
        "dart-debug-adapter",
        -- C#
        "csharp-language-server",
        "csharpier",
        -- python
        "python-lsp-server",
        "black",
      },
    },
  },
}
