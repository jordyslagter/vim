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

-- Configures Vim Tmux Navigator, a plugin that allows seamless navigation
-- between Vim buffers and Tmux panes (when you have it installed on both
-- sides)

return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = true,
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      {
        "<c-h>",
        "<cmd><C-U>TmuxNavigateLeft<cr>",
        desc = "Go to Left Pane (Vim Tmux Navigator)",
      },
      {
        "<c-j>",
        "<cmd><C-U>TmuxNavigateDown<cr>",
        desc = "Go to Lower Pane (Vim Tmux Navigator)",
      },
      {
        "<c-k>",
        "<cmd><C-U>TmuxNavigateUp<cr>",
        desc = "Go to Upper Pane (Vim Tmux Navigator)",
      },
      {
        "<c-l>",
        "<cmd><C-U>TmuxNavigateRight<cr>",
        desc = "Go to Right Pane (Vim Tmux Navigator)",
      },
      {
        "<c-\\>",
        "<cmd><C-U>TmuxNavigatePrevious<cr>",
        desc = "Go to Previous Pane (Vim Tmux Navigator)",
      },
    },
  },
}
