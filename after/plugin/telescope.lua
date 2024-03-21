local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fa', builtin.find_files, {}) -- find files in project
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- find files in git
-- grep (find string in file)
-- don't forget to install ripgrep for this (choco install ripgrep / brew install ripgrep)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Sneltoets toewijzen aan Telescope file_browser
vim.keymap.set('n', '<Leader>ff', ':Telescope file_browser<CR>', { noremap = true, silent = true })

-- filebrowser
require("telescope").setup {
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown { }
		}
	}
}
require("telescope").load_extension "file_browser"

 
vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser<CR>",
  { noremap = true }
)

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<space>fbb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)

-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")

