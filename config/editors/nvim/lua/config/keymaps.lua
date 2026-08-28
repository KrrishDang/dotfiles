-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

--------------------------------------------------
-- Insert Mode
--------------------------------------------------

-- Quick exit from Insert mode
map("i", "jj", "<Esc>", { desc = "Exit Insert Mode" })

-- Quick save from Insert mode
map("i", "jk", "<Esc><cmd>w<CR>", { desc = "Save and Exit Insert Mode" })

--------------------------------------------------
-- General
--------------------------------------------------

-- Save file
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR><Esc>", { desc = "Save File" })

-- Clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear Search Highlight" })

--------------------------------------------------
-- Terminal
--------------------------------------------------

-- Exit terminal mode
map("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit Terminal Mode" })
