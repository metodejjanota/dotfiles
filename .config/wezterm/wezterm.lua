local wezterm = require("wezterm")
config = wezterm.config_builder()

config = {
    window_background_opacity = 0.65,
    macos_window_background_blur = 100,
	font_size = 19,
	enable_tab_bar = false,
	default_cursor_style = "BlinkingBar",
	color_scheme = "Tokyo Night",
	automatically_reload_config = true,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
}


return config
