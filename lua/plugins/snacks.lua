-- Copyright 2026 Jordy Slagter
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

-- Configures Snacks options - the current dashboard and explorer provided with
-- LazyVim

return {
  {
    "folke/snacks.nvim",
    -- if LazyVim ever moves away from Snacks, ignore this config
    optional = true,
    dependencies = {
      {
        "ColaMint/pokemon.nvim",
      },
    },
    ---@type snacks.Config
    opts = {
      -- disable smooth scroll animations
      scroll = { enabled = false },
      -- enable hidden files in the picker
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

      -- add a key bind that only exists on the Snacks dashboard to open the
      -- related Pokédex entry, we can't do this via the plugin definition
      -- as the Pokemon plugin only loads during Snacks startup
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
              desc = "Toggle Pokédex",
            }
          )
        end,
      })
    end,
  },
}
