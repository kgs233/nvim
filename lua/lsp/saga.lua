require("lspsaga").setup {
	lightbulb = {
		enable = true,
		enable_in_insert = true,
		sign = true,
		sign_priority = 40,
		virtual_text = true,
	},

	finder = {
		max_height = 0.5,
		min_width = 30,
		force_max_height = false,
		keys = {
			jump_to = 'p',
			expand_or_jump = 'o',
			vsplit = 's',
			split = 'i',
			tabe = 't',
			tabnew = 'r',
			quit = { 'q', '<ESC>' },
			close_in_preview = '<ESC>',
		},
	},

	hover = {
		max_width = 0.6,
	},

	outline = {
		win_position = "right",
		win_with = "",
		win_width = 30,
		preview_width = 0.4,
		show_detail = true,
		auto_preview = true,
		auto_refresh = true,
		auto_close = true,
		auto_resize = false,
		custom_sort = nil,
		keys = {
			expand_or_jump = 'o',
			quit = "q",
		},
	},
}
