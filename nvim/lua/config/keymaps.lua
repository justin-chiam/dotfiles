-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<A-j>", "<Cmd>move .+1<CR>==", {
  desc = "Move line down",
  silent = true,
})

vim.keymap.set("n", "<A-k>", "<Cmd>move .-2<CR>==", {
  desc = "Move line up",
  silent = true,
})

vim.keymap.set("i", "<A-j>", "<Esc><Cmd>move .+1<CR>==gi", {
  desc = "Move line down",
  silent = true,
})

vim.keymap.set("i", "<A-k>", "<Esc><Cmd>move .-2<CR>==gi", {
  desc = "Move line up",
  silent = true,
})

vim.keymap.set("v", "<A-j>", "<Cmd>move '>+1<CR>gv=gv", {
  desc = "Move selection down",
  silent = true,
})

vim.keymap.set("v", "<A-k>", "<Cmd>move '<-2<CR>gv=gv", {
  desc = "Move selection up",
  silent = true,
})
