-- make .arb files syntax highlighted as .json files
vim.filetype.add({
  extension = {
    arb = "json",
  },
})

return {
  -- depends on the dart language extra provided by LazyVim
  { import = "lazyvim.plugins.extras.lang.dart" },
  {
    "nvim-flutter/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    ft = "dart",
    config = true,
    keys = {
      {
        "<localleader>r",
        "<cmd>FlutterRun<CR>",
        desc = "Run current project (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>d",
        "<cmd>FlutterDebug<CR>",
        desc = "Run current project in debug mode (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>D",
        "<cmd>FlutterDevices<CR>",
        desc = "List connected devices (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>E",
        "<cmd>FlutterEmulators<CR>",
        desc = "List available emulators (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>R",
        "<cmd>FlutterReload<CR>",
        desc = "Reload the current project (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>C",
        "<cmd>FlutterRestart<CR>",
        desc = "Restart the current project (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>Q",
        "<cmd>FlutterQuit<CR>",
        desc = "End the current session (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>A",
        "<cmd>FlutterAttach<CR>",
        desc = "Attach to a running app (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>c",
        "<cmd>FlutterDetach<CR>",
        desc = "Detach the current session (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>o",
        "",
        desc = "+outline (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>ot",
        "<cmd>FlutterOutlineToggle<CR>",
        desc = "Toggle outline (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>oo",
        "<cmd>FlutterOutlineOpen<CR>",
        desc = "Open outline (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>s",
        "",
        desc = "+server (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>sd",
        "<cmd>FlutterDevTools<CR>",
        desc = "Start Dart Dev Tools server (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>sa",
        "<cmd>FlutterDevToolsActivate<CR>",
        desc = "Activate Dart Dev Tools server (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>su",
        "<cmd>FlutterCopyProfilerUrl<CR>",
        desc = "Copy profiler URL (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>sl",
        "<cmd>FlutterLspRestart<CR>",
        desc = "Restart Dart language server (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>sr",
        "<cmd>FlutterReanalyze<CR>",
        desc = "Force LSP reanalyze (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>S",
        "<cmd>FlutterSuper<CR>",
        desc = "Go to super class (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>v",
        "<cmd>FlutterRename<CR>",
        desc = "Rename and update imports (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>l",
        "",
        desc = "+log (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>lc",
        "<cmd>FlutterLogClear<CR>",
        desc = "Clear log (Flutter)",
        ft = "dart",
      },
      {
        "<localleader>lt",
        "<cmd>FlutterLogToggle<CR>",
        desc = "Toggle log (Flutter)",
        ft = "dart",
      },
    },
  },
}
