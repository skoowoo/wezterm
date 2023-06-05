local wezterm = require("wezterm")
local config = {
	-- font
	font = wezterm.font("VictorMono Nerd Font", { italic = false }),
	font_size = 13,

	-- shell
	default_prog = { "zsh" },

	-- window
	window_background_opacity = 0.95,
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
	hide_tab_bar_if_only_one_tab = true,
	hide_mouse_cursor_when_typing = true,

	-- window size
	initial_cols = 210,
	initial_rows = 50,

	-- colors
	color_scheme = "hardhacker",

	force_reverse_video_cursor = true,

	window_frame = {
		font_size = 12.0,
		active_titlebar_bg = "#3f3951",
		inactive_titlebar_bg = "#3f3951",
	},
	colors = {
		tab_bar = {
			background = "#282433",

			active_tab = {
				bg_color = "#282433",
				fg_color = "#e965a5",

				intensity = "Normal",
				underline = "Single",
				italic = true,
				strikethrough = false,
			},

			inactive_tab = {
				bg_color = "#211e2a",
				fg_color = "#938aad",
			},

			inactive_tab_hover = {
				bg_color = "#e192ef",
				fg_color = "#eee9fc",
				italic = true,
			},

			new_tab = {
				bg_color = "#282433",
				fg_color = "#938aad",
			},

			new_tab_hover = {
				bg_color = "#e192ef",
				fg_color = "#eee9fc",
				italic = true,
			},
		},
	},
}

return config
