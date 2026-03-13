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
