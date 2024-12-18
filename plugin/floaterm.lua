-- get out of terminal mode
vim.keymap.set("t", "<esc>", "<c-\\><c-n>")

-- create a state to reopen the window and terminal buffer
local state = {
	floating = {buf = -1, win = -1}
}

local function create_floating_window(opts)
	opts = opts or {}
    -- Get the current editor dimensions
    local editor_width = vim.o.columns
    local editor_height = vim.o.lines

    -- Set default dimensions
    local width = opts and opts.width or math.floor(editor_width * 0.8)
    local height = opts and opts.height or math.floor(editor_height * 0.8)

    -- Calculate centered position
    local col = math.floor((editor_width - width) / 2)
    local row = math.floor((editor_height - height) / 2)

    -- Create buffer 
    local buf = nil
	if vim.api.nvim_buf_is_valid(opts.buf) then
		buf = opts.buf
	else
		buf = vim.api.nvim_create_buf(false, true) -- Create a new buffer
	end

	-- define window configuration
	local winConfig = {
        relative = 'editor',
        width = width,
        height = height,
        col = col,
        row = row,
        style = 'minimal',
        border = 'rounded', -- Optional border, can be 'single', 'double', etc.
    }
    local win = vim.api.nvim_open_win(buf, true, winConfig)

    return {buf = buf, win = win }
end

local toggleTerminal =  function()
	if not vim.api.nvim_win_is_valid(state.floating.win) then
		-- open floating window in buffer
		state.floating = create_floating_window { buf = state.floating.buf }

		-- check if new window is terminal if not set it.
		if vim.bo[state.floating.buf].buftype ~= "terminal" then
			vim.cmd.terminal()
		end
	else
		-- hide floating window when visible
		vim.api.nvim_win_hide(state.floating.win)
	end
end

-- create a nvim command
vim.api.nvim_create_user_command("Floaterminal", toggleTerminal, {})

-- create a keymap to Toggle Terminal
vim.keymap.set({"n", "t"}, "<leader>tt", toggleTerminal)

