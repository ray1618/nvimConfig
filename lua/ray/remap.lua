vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv",":Ex<CR>") -- exit file
vim.keymap.set("n", "<leader>qq",":q<CR>") -- quit
vim.keymap.set("n", "<leader>lz",":Lazy<CR>") -- open lazy
vim.keymap.set("n", "<leader>lp",":LspInstall") -- install lsp (language service protocal) with lsp-zero 
vim.keymap.set("n", "<leader>ma", ":Mason") -- lsp's install 
vim.keymap.set("n", "<leader>s",":w<CR>") -- save
vim.keymap.set("n", "<M-s>",":w<CR>") -- save
vim.keymap.set("n", "<leader>n", ":NERDTreeFocus<CR>");
vim.keymap.set("n", "<C-e>", ":NERDTreeToggle<CR>");
vim.keymap.set("n", "<C-f>", ":NERDTreeFind<CR>");

-- gebruik telescope op het moment (zie telescope)
--vim.keymap.set("n", "<leader>ls", ":ls<CR>") -- show list of buffers

-- find en rename woord onder cursor door hele bestand
vim.keymap.set("n", "<leader>fr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- paste delete zonder yank register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- delete selection without using register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>dd", "\"_dd")
-- replace current selection zonder gedelete text in register te zetten.
vim.keymap.set("n", "<leader>r", "\"_ciw<Esc>p")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- jk escape with qw and stop recording
vim.keymap.set("i", "qw", "<Esc>") -- exit on jk (not sure if this is a good idea in dutch ~_~
vim.keymap.set("v", "<leader>kj", "<Esc>")

-- move selected line(s) up or down / or the lines where the cursor is atm 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");

-- split window with current file (horizontal / vertical)
vim.keymap.set('n', '<C-h>', ':split<CR>');
vim.keymap.set('n', '<C-s>', ':vsplit<CR>');
-- close split window
vim.keymap.set('n', '<C-q>', ':close<CR>');


-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- buffer

-- Toggle (b)revious? & next buffers 
vim.keymap.set('n', '<C-b>', ':bnext<CR>')
vim.keymap.set('n', '<C-n>', ':bprev<CR>')

vim.keymap.set('n', '<C-a>', 'ggVG$');
