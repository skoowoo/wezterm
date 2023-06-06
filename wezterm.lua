local wezterm = require("wezterm")

return {
	default_prog = { "zsh" },
	underline_position = -4,
	underline_thickness = "200%",
	force_reverse_video_cursor = true,
	hide_tab_bar_if_only_one_tab = true,
	hide_mouse_cursor_when_typing = true,
	use_resize_increments = true,
	bold_brightens_ansi_colors = true,

	-- font
	font_size = 13,
	font = wezterm.font({
		family = "VictorMono Nerd Font Mono",
		weight = "Medium",
		harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	}),
	--font_rules = {
	--	{
	--		intensity = "Normal",
	--		italic = true,
	--		font = wezterm.font({
	--			family = "VictorMono Nerd Font Mono",
	--			style = "Oblique",
	--		}),
	--	},
	--},

	-- colors
	color_scheme = "hardhacker",

	-- window
	window_background_opacity = 0.95,
	window_padding = {
		left = 2,
		right = 2,
		top = 1,
		bottom = 0,
	},
	initial_cols = 210,
	initial_rows = 50,

	-- tab bar
	window_frame = {
		font_size = 12.0,
		active_titlebar_bg = "#282433",
		inactive_titlebar_bg = "#282433",
	},
	colors = {
		tab_bar = {
			background = "#282433",
			active_tab = {
				bg_color = "#282433",
				fg_color = "#e965a5",

				intensity = "Normal",
				underline = "None",
				italic = true,
				strikethrough = false,
			},
			inactive_tab = {
				bg_color = "#282433",
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
