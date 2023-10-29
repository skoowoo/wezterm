local wezterm = require("wezterm")

--wezterm.on("update-status", function(window, pane)
--	if pane:is_alt_screen_active() then
--		window:set_config_overrides({
--			window_padding = { left = 1, right = 1, top = 15, bottom = 0 },
--		})
--	else
--		window:set_config_overrides({
--			window_padding = { left = 20, right = 20, top = 15, bottom = 15 },
--			window_background_opacity = 0.9,
--			macos_window_background_blur = 20,
--		})
--	end
--end)

wezterm.on("update-status", function(window, pane)
	local info = pane:get_foreground_process_info()
	if info == nil then
		return
	end
	if info.name == "nvim" then
		window:set_config_overrides({
			window_padding = { left = 1, right = 1, top = 15, bottom = 0 },
		})
	else
		window:set_config_overrides({
			window_padding = { left = 20, right = 20, top = 15, bottom = 15 },
			window_background_opacity = 0.9,
			macos_window_background_blur = 20,
		})
	end
end)

return {
	default_prog = { "zsh" },
	underline_position = -4,
	underline_thickness = "200%",
	force_reverse_video_cursor = true,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = false,
	hide_mouse_cursor_when_typing = true,
	use_resize_increments = false,
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
	initial_cols = 255,
	initial_rows = 55,
}
