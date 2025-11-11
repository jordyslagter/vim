-- Adds tools for the Flutter framework

-- make .arb files syntax highlighted as .json files
vim.filetype.add({
  extension = {
    arb = "json",
  },
})

local flutterFileTypes = {
  "dart",
}

return {
  -- depends on the dart language extra provided by LazyVim
  { import = "lazyvim.plugins.extras.lang.dart" },
  {
    "nvim-flutter/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    ft = flutterFileTypes,
    config = true,
    keys = {
      {
        "<localleader>r",
        "<cmd>FlutterRun<CR>",
        desc = "Run current project (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>d",
        "<cmd>FlutterDebug<CR>",
        desc = "Run current project in debug mode (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>D",
        "<cmd>FlutterDevices<CR>",
        desc = "List connected devices (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>E",
        "<cmd>FlutterEmulators<CR>",
        desc = "List available emulators (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>R",
        "<cmd>FlutterReload<CR>",
        desc = "Reload the current project (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>C",
        "<cmd>FlutterRestart<CR>",
        desc = "Restart the current project (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>Q",
        "<cmd>FlutterQuit<CR>",
        desc = "End the current session (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>A",
        "<cmd>FlutterAttach<CR>",
        desc = "Attach to a running app (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>c",
        "<cmd>FlutterDetach<CR>",
        desc = "Detach the current session (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>o",
        "",
        desc = "+outline (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>ot",
        "<cmd>FlutterOutlineToggle<CR>",
        desc = "Toggle outline (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>oo",
        "<cmd>FlutterOutlineOpen<CR>",
        desc = "Open outline (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>s",
        "",
        desc = "+server (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>sd",
        "<cmd>FlutterDevTools<CR>",
        desc = "Start Dart Dev Tools server (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>sa",
        "<cmd>FlutterDevToolsActivate<CR>",
        desc = "Activate Dart Dev Tools server (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>su",
        "<cmd>FlutterCopyProfilerUrl<CR>",
        desc = "Copy profiler URL (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>sl",
        "<cmd>FlutterLspRestart<CR>",
        desc = "Restart Dart language server (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>sr",
        "<cmd>FlutterReanalyze<CR>",
        desc = "Force LSP reanalyze (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>S",
        "<cmd>FlutterSuper<CR>",
        desc = "Go to super class (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>v",
        "<cmd>FlutterRename<CR>",
        desc = "Rename and update imports (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>l",
        "",
        desc = "+log (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>lc",
        "<cmd>FlutterLogClear<CR>",
        desc = "Clear log (Flutter)",
        ft = flutterFileTypes,
      },
      {
        "<localleader>lt",
        "<cmd>FlutterLogToggle<CR>",
        desc = "Toggle log (Flutter)",
        ft = flutterFileTypes,
      },
    },
  },
}
