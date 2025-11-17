-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Use Skim as the PDF viewer
vim.g.vimtex_view_method = "skim"

-- Enable SyncTeX and auto-reload
vim.g.vimtex_view_skim_sync = 1 -- Enable forward/inverse search
vim.g.vimtex_view_skim_activate = 0 -- Focus Skim after compiling
