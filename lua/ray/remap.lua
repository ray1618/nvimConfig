vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv",":Ex<CR>") 
vim.keymap.set("n", "<leader>ps",":PackerSync")
vim.keymap.set("n", "<leader>s",":w<CR>")
vim.keymap.set("n", "<C-s>",":w<CR>")
vim.keymap.set("n", "<M-s>",":w<CR>")

-- paste delete zonder yank register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank van cursort to eind / begin line
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>dd", "\"_dd")
-- jk escape with just kidding :) 
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("v", "<leader>jk", "<Esc>")
--vim.keymap.set("n", "<leader>Y", "\"+Y")
