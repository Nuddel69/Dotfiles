-- Pull in the wezterm API
local wezterm = require("wezterm")

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Latte"
	end
end

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
config.color_scheme = "Catppuccin Mocha"

-- config.font = wezterm.font("Hack Nerd Font Mono")
-- config.font = wezterm.font("MesloLGL Nerd Font Mono")
config.font = wezterm.font("OpenDyslexicM Nerd Font")
config.font_size = 11

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 1
config.macos_window_background_blur = 5

config.send_composed_key_when_left_alt_is_pressed = true

-- and finally, return the configuration to wezterm
return config
