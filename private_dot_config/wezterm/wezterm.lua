-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.font_size = 10
config.color_scheme = 'Catppuccin Mocha'
config.window_background_opacity = 0.7
config.text_background_opacity = 0.3
config.command_palette_font_size = 12.0
config.hide_tab_bar_if_only_one_tab = true

config.visual_bell = {
    fade_in_function = 'EaseIn',
    fade_in_duration_ms = 50,
    fade_out_function = 'EaseOut',
    fade_out_duration_ms = 50,
}

config.colors = {
    visual_bell = '#6c7086',
}

local keybindings = require 'keybindings'
keybindings.apply(config)

-- and finally, return the configuration to wezterm
return config
