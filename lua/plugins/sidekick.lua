-- Copyright 2026 Jordy Slagter
--
-- Licensed under the Apache NON-AI License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
-- https://raw.githubusercontent.com/non-ai-licenses/non-ai-licenses/refs/heads/main/NON-AI-APACHE2
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

-- sets up sidekick.nvim options

return {
  {
    "folke/sidekick.nvim",
    optional = true,
    opts = {
      -- disables the 'sign in the copilot' warning when opening a file, as I
      -- don't use copilot
      copilot = {
        status = {
          enabled = false,
        },
      },
    },
  },
}
