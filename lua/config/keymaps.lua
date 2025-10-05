-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local set = vim.keymap.set

set("n", "<C-s>", ":w<CR>", { remap = false, desc = "Write Current Buffer", silent = true })
set("n", "<C-x>", ":bd<CR>", { remap = false, desc = "Close current buffer", silent = true })
set("i", "<C-x>", "<Escape>:bd<CR>", { remap = false, desc = "Close current buffer", silent = true })

-- Trying Ryan Florence trick with Lua
set("n", "<A-j>", ":m .+1<CR>==", { remap = false })
set("n", "<A-k>", ":m .-2<CR>==", { remap = false })
set("i", "<A-j>", "<Escape>:m .+1<CR>==gi", { remap = false })
set("i", "<A-k>", "<Escape>:m .-2<CR>==gi", { remap = false })
set("v", "<A-j>", ":m '>+1<CR>gv=gv", { remap = false })
set("v", "<A-k>", ":m '<-2<CR>gv=gv", { remap = false })

-- for dealing with buffers
set("n", "<S-l>", ":bnext<CR>", { desc = "Next Buffer", silent = true })
set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous Buffer", silent = true })

-- From the Primeagen
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

-- Remap for dealing with word wrap
set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

set("n", "<A-h>", "<C-w>h", { desc = "Move to left split" })
set("n", "<A-j>", "<C-w>j", { desc = "Move to below split" })
set("n", "<A-k>", "<C-w>k", { desc = "Move to above split" })
set("n", "<A-l>", "<C-w>l", { desc = "Move to right split" })
