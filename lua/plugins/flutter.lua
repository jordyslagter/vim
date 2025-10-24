-- make .arb files syntax highlighted as .json files
vim.filetype.add({
  extension = {
    arb = "json",
  },
})

return {
  {
    "nvim-flutter/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    ft = "dart",
    config = true,
  },
}
