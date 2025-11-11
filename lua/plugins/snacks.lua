return {
  {
    "folke/snacks.nvim",
    -- if LazyVim ever switches away from Snacks, ignore this config
    optional = true,
    dependencies = {
      {
        "ColaMint/pokemon.nvim",
      },
    },
    opts = {
      picker = {
        sources = {
          files = { hidden = true },
          grep = { hidden = true },
          explorer = { hidden = true },
        },
      },
    },
    config = function(_, opts)
      local pokemon = require("pokemon")
      pokemon.setup({
        number = "random",
        size = "auto",
      })

      -- Pokemon returns a table, Snacks expects a string, so we convert the
      -- table into a concat string
      local header_table = pokemon.header() or {}
      local header_string = table.concat(header_table, "\n")

      local opts_with_pokemon = vim.tbl_deep_extend("force", opts, {
        dashboard = {
          preset = {
            header = header_string,
          },
        },
      })

      require("snacks").setup(opts_with_pokemon)

      vim.api.nvim_create_autocmd("User", {
        pattern = "SnacksDashboardOpened",
        callback = function()
          local bufnr = vim.api.nvim_get_current_buf()
          vim.keymap.set(
            "n",
            "<localleader>p",
            "<cmd>PokemonTogglePokedex<CR>",
            {
              buffer = bufnr,
              noremap = true,
              silent = true,
              desc = "Show Pokédex",
            }
          )
        end,
      })
    end,
  },
}
