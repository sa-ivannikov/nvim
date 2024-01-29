local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<Leader>xx", ":bd<CR>", opts)
vim.keymap.set("n", "<Leader>XX", ":bd!<CR>", opts)
