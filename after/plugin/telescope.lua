local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
      vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
      vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

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
  "<leader>fb",
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

-- show a list of current open files in buffer to replace harpoon
vim.api.nvim_set_keymap('n', '<leader>ls', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })

-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")
