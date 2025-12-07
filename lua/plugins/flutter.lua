-- Adds tools for the Flutter framework

-- make .arb files syntax highlighted as .json files
vim.filetype.add({
  extension = {
    arb = "json",
  },
})

local flutter_file_types = {
  "dart",
}

return {
  -- depends on the java language extra provided by LazyVim
  { import = "lazyvim.plugins.extras.lang.java" },
  -- depends on the kotlin language extra provided by LazyVim
  { import = "lazyvim.plugins.extras.lang.kotlin" },
  -- depends on the dart language extra provided by LazyVim
  { import = "lazyvim.plugins.extras.lang.dart" },
  -- depends on the yaml language extra provided by LazyVim
  { import = "lazyvim.plugins.extras.lang.yaml" },
  {
    "nvim-flutter/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    ft = flutter_file_types,
    lazy = true,
    config = true,
    keys = {
      {
        "<localleader>r",
        "<cmd>FlutterRun<CR>",
        desc = "Run current project (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>d",
        "<cmd>FlutterDebug<CR>",
        desc = "Run current project in debug mode (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>D",
        "<cmd>FlutterDevices<CR>",
        desc = "List connected devices (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>E",
        "<cmd>FlutterEmulators<CR>",
        desc = "List available emulators (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>R",
        "<cmd>FlutterReload<CR>",
        desc = "Reload the current project (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>C",
        "<cmd>FlutterRestart<CR>",
        desc = "Restart the current project (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>Q",
        "<cmd>FlutterQuit<CR>",
        desc = "End the current session (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>A",
        "<cmd>FlutterAttach<CR>",
        desc = "Attach to a running app (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>c",
        "<cmd>FlutterDetach<CR>",
        desc = "Detach the current session (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>o",
        "",
        desc = "+outline (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>ot",
        "<cmd>FlutterOutlineToggle<CR>",
        desc = "Toggle outline (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>oo",
        "<cmd>FlutterOutlineOpen<CR>",
        desc = "Open outline (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>s",
        "",
        desc = "+server (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>sd",
        "<cmd>FlutterDevTools<CR>",
        desc = "Start Dart Dev Tools server (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>sa",
        "<cmd>FlutterDevToolsActivate<CR>",
        desc = "Activate Dart Dev Tools server (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>su",
        "<cmd>FlutterCopyProfilerUrl<CR>",
        desc = "Copy profiler URL (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>sl",
        "<cmd>FlutterLspRestart<CR>",
        desc = "Restart Dart language server (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>sr",
        "<cmd>FlutterReanalyze<CR>",
        desc = "Force LSP reanalyze (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>S",
        "<cmd>FlutterSuper<CR>",
        desc = "Go to super class (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>v",
        "<cmd>FlutterRename<CR>",
        desc = "Rename and update imports (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>l",
        "",
        desc = "+log (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>lc",
        "<cmd>FlutterLogClear<CR>",
        desc = "Clear log (Flutter)",
        ft = flutter_file_types,
      },
      {
        "<localleader>lt",
        "<cmd>FlutterLogToggle<CR>",
        desc = "Toggle log (Flutter)",
        ft = flutter_file_types,
      },
    },
  },
}
