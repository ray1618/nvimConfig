-- floaterm new (make sure lazy git is installed on the system)
vim.keymap.set("n", "<leader>git", ":FloatermNew lazygit<CR>")

-- floaterm toggle
vim.keymap.set("n", "<leader>ft", ":FloatermToggle<CR>")

vim.g.floaterm_width = 0.9
vim.g.floaterm_height = 0.8
