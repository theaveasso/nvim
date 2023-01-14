local set = vim.keymap.set

set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- personal fav
set("i", "jj", "<Esc>")

set("n", "<leader>w", vim.cmd.w)
set("n", "<leader>so", vim.cmd.so)
set("n", "<leader>h", vim.cmd.noh)

set("x", "p", [["_dP]])
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

-- scroll down or up to middle page
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")

-- copy/ clipboard
set("v", "<Leader>y", "\"+y", { silent = true })
set("v", "<Leader>Y", "\"+Y", { silent = true })
set("v", "<Leader>P", "\"+P", { silent = true })
set("v", "<Leader>p", "\"+p", { silent = true })

-- tab
set("n", "<C-h>", "<C-w>h")
set("n", "<C-j>", "<C-w>j")
set("n", "<C-k>", "<C-w>k")
set("n", "<C-l>", "<C-w>l")

-- screen
set("n", "<leader>sv", "<C-w>v")
set("n", "<leader>sh", "<C-w>s")
set("n", "<leader>sx", vim.cmd.close)

-- diagnostic
set("n", "[j", vim.diagnostic.goto_prev)
set("n", "]j", vim.diagnostic.goto_next)
set("n", "<leader>q", vim.diagnostic.setloclist)
set("n", "<leader>Q", vim.diagnostic.open_float)

-- -- Telescope
set("n", "<leader>f", require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
set("n", '<leader>o', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
set("n", "<leader>fg", require('telescope.builtin').git_status, { desc = 'Open Changed Files' })
set("n", "<leader>hp", require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
set("n", "<leader>sk", require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
set("n", "<leader>st", require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
set("n", "<leader>sr", require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
set("n", "<leader>sd", require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
set('n', '<leader>sf', function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = '[/] Fuzzily search in current buffer]' })-- You can pass additional configuration to telescope to change theme, layout, etc.r

-- Bufferline
set("n", "<S-l>", vim.cmd.BufferLineCycleNext, { silent = true, desc = "Switch to left buffer " })
set("n", "<S-h>", vim.cmd.BufferLineCyclePrev, { silent = true, desc = "Switch to right buffer " })
set("n", "<leader>bl", vim.cmd.BufferLineCloseRight, { silent = true, desc = 'Close pll Buffer To The Right' })
set("n", "<leader>bh", vim.cmd.BufferLineCloseLeft, { silent = true, desc = 'Close All Buffer To The Left' })
set("n", "<leader>bq", vim.cmd.BufferLineTogglePin, { silent = true, desc = 'Pin Buffer' })
set("n", "<leader>bp", vim.cmd.BufferLinePick, { silent = true, desc = 'Pick A Buffer' })
set("n", "<leader>bc", vim.cmd.BufferLinePickClose, { silent = true, desc = 'Select A Buffer To Close' })

-- NVIM TREE
set("n", "<leader>e", vim.cmd.NvimTreeToggle, { silent = true, desc = 'Toggle NVIM Tree' })
set("n", "<C-n>", vim.cmd.NvimTreeFocus, { silent = true, desc = 'Focus NVIM Tree' })
