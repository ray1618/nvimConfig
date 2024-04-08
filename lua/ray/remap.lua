vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv",":Ex<CR>") -- exit file
vim.keymap.set("n", "<leader>qq",":q<CR>") -- quit
vim.keymap.set("n", "<leader>ps",":PackerSync") -- install plugin with packersync
vim.keymap.set("n", "<leader>lsp",":LspInstall") -- install lsp (language service protocal) with lsp-zero 
vim.keymap.set("n", "<leader>ma", ":Mason") -- lsp's install 
vim.keymap.set("n", "<leader>s",":w<CR>") -- save
vim.keymap.set("n", "<M-s>",":w<CR>") -- save
vim.keymap.set("n", "<leader>ls", ":ls<CR>") -- show list of buffers
vim.keymap.set("n", "<leader>n", ":NERDTreeFocus<CR>");
vim.keymap.set("n", "<C-e>", ":NERDTreeToggle<CR>");
vim.keymap.set("n", "<C-f>", ":NERDTreeFind<CR>");

-- find en rename woord onder cursor door hele bestand
vim.keymap.set("n", "<leader>fr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- paste delete zonder yank register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank van cursort to eind / begin line
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>dd", "\"_dd")

-- jk escape with just kidding :) 
vim.keymap.set("i", "kj", "<Esc>") -- exit on jk (not sure if this is a good idea in dutch ~_~
vim.keymap.set("v", "<leader>kj", "<Esc>")

-- move selected line(s) up or down / or the lines where the cursor is atm 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");
