local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = true,
	window_close_confirmation = "NeverPrompt",
	default_cursor_style = "BlinkingBar",
	color_scheme = "Nord (Gogh)",
	font = wezterm.font("JetBrains Mono", { weight = "Bold"}),
	font_size = 12.5,
	audible_bell = "Disabled",
	send_composed_key_when_left_alt_is_pressed = true,

	background = {
    	{
        	source = {
            	File = {
					path='/Users/gueroult/Pictures/interstellar.jpg',
				},
        	},
        	height = '100%',
        	horizontal_align = 'Center',
        	hsb = {
				brightness = 0.15,
				hue = 1.0,
				saturation = 1.02,
			},
    	},
		{
			source = {
				Color = "#282c35",
			},
			width = "100%",
			opacity = 0.65,
		}
	}
}

return config
