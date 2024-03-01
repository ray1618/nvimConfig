vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv",":Ex<CR>") -- exit file
vim.keymap.set("n", "<leader>qq",":q<CR>") -- quit
vim.keymap.set("n", "<leader>ps",":PackerSync") -- install plugin with packersync
vim.keymap.set("n", "<leader>lsp",":LspInstall") -- install lsp (language service protocal) with lsp-zero 
vim.keymap.set("n", "<leader>ma", ":Mason") -- lsp's install 
vim.keymap.set("n", "<leader>s",":w<CR>") -- save
vim.keymap.set("n", "<M-s>",":w<CR>") -- save
vim.keymap.set("n", "<leader>ls", ":ls<CR>") -- show list of buffers

-- paste delete zonder yank register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank van cursort to eind / begin line
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>dd", "\"_dd")

-- jk escape with just kidding :) 
vim.keymap.set("i", "jk", "<Esc>") -- exit on jk (not sure if this is a good idea in dutch ~_~
vim.keymap.set("v", "<leader>jk", "<Esc>")
--vim.keymap.set("n", "<leader>Y", "\"+Y")
