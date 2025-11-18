local M = {}

function M.apply_to(config)
    config.automatically_reload_config = true
    config.window_close_confirmation = "NeverPrompt"
end

return M
