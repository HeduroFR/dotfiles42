vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>x", "<cmd>x<cr>", { desc = "Save and quit" })

map("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower split" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper split" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase horizontal split size" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease horizontal split size" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease vertical split size" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase vertical split size" })

map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Close buffer" })

map("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear highlights" })
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move selection up" })
map("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

map("n", "<leader>t", "<cmd>terminal<cr>", { desc = "Open terminal" })
map("n", "<leader>cn", "<cmd>!norminette %<cr>", { desc = "Check Norminette" })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
