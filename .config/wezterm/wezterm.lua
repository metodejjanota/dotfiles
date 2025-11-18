local wezterm = require("wezterm")
config = wezterm.config_builder()

local appearance = require("appearance")
local behavior = require("behavior")

appearance.apply_to(config)
behavior.apply_to(config)

return config
