local wezterm = require("wezterm")

wezterm.on("update-status", function(window, pane)
	if pane:is_alt_screen_active() then
		window:set_config_overrides({
			window_padding = { left = 0, right = 0, top = 0, bottom = 0},
		})
	else
		window:set_config_overrides({
			window_padding = { left = 20, right = 20, top = 5, bottom = 10 },
		})
	end
end)

return {
	default_prog = { "zsh" },
	underline_position = -4,
	underline_thickness = "200%",
	force_reverse_video_cursor = true,
	hide_tab_bar_if_only_one_tab = true,
	hide_mouse_cursor_when_typing = true,
	use_resize_increments = true,
	bold_brightens_ansi_colors = true,
	audible_bell = "Disabled",
	enable_scroll_bar = false,

	-- font
	font_size = 13,
	font = wezterm.font_with_fallback({
		{
			family = "VictorMono Nerd Font Mono",
			weight = "Medium",
			harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
		},
		"LXGW WenKai Mono",
	}),
	font_rules = {
		{
			intensity = "Normal",
			italic = true,
			font = wezterm.font({
				family = "VictorMono Nerd Font Mono",
				style = "Oblique",
			}),
		},
	},

	-- colors
	color_scheme = "hardhacker",
	use_fancy_tab_bar = false,
	window_decorations = "RESIZE | TITLE | MACOS_FORCE_ENABLE_SHADOW",

	-- window
	window_padding = { left = 0, right = 0, top = 0, bottom = 0},
	window_background_opacity = 1,
	initial_cols = 235,
	initial_rows = 55,
}
