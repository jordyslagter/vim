-- Configures Vim Tmux Navigator, a plugin that allows seamless navigation
-- between Vim buffers and Tmux panes (when you have it installed on both
-- sides)

return {
  {
    "christoomey/vim-tmux-navigator",
    -- Plugin will either load on VeryLazy or on a key press defined in
    -- keys, so it's fine to load it on VeryLazy here
    event = "VeryLazy",
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
