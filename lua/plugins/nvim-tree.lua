return {
	{ 'kyazdani42/nvim-tree.lua', opts = {
        open_on_setup = true,
        ignore_buffer_on_setup = true,
        ignore_ft_on_setup = {
            "gitcommit",
            "alpha"
        },

		update_focused_file = {
			enable = true,
			update_cwd = false,
			ignore_list = {},
		},

		view = {
			adaptive_size = true,
			mappings = {
				list = {
					{ key = "h", action = "close_node" },
					{ key = "l", action = "open_node" },
					{ key = "v", action = "vsplit" },
                    { key = "a", action = "create"}
				},
			},
        },

        renderer = {
            group_empty = true,
            highlight_git = true,
            indent_width = 2,
            indent_markers = {
                enable = false,
                inline_arrows = true,
                icons = {
                    corner = "└",
                    edge = "│",
                    item = "│",
                    bottom = "─",
                    none = " ",
                },
            },
            icons = {
                webdev_colors = true,
                glyphs = {
                    default = "",
                    symlink = "",
                    bookmark = "",
                    modified = "●",
                    folder = {
                      arrow_closed = "",
                      arrow_open = "",
                      default = "",
                      open = "",
                      empty = "",
                      empty_open = "",
                      symlink = "",
                      symlink_open = "",
                    },
                    git = {
                      unstaged = "✗",
                      staged = "✓",
                      unmerged = "",
                      renamed = "➜",
                      untracked = "★",
                      deleted = "",
                      ignored = "◌",
                    },
                }
            },
        },
	}
}}
