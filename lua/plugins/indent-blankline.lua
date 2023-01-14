return {
	{ 'lukas-reineke/indent-blankline.nvim',
		event = "BufReadPre",
		opts = {
			show_trailing_blankline_indent = false,
            indent_blankline_filetype_exclude = 'dashboard',
        }
	} -- Add indentation guides even on blank lines
}
