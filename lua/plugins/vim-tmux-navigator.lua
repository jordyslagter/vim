return {
  {
    "christoomey/vim-tmux-navigator",
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
