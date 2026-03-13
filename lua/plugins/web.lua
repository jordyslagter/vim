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
