local M = {}

function M.apply_to(config)
    config.window_background_opacity = 0.65
    config.macos_window_background_blur = 100
    config.font_size = 19
    config.enable_tab_bar = false
    config.default_cursor_style = "BlinkingBar"
    config.color_scheme = "Tokyo Night"
    config.window_decorations = "RESIZE"
end

return M

