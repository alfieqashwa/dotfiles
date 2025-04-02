local wezterm = require("wezterm")

return {
	keys = {
		-- Vertical Split
		{
			key = "\\",
			mods = "CTRL",
			action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }),
		},
		-- Horizontal Split
		{
			key = "|",
			mods = "CTRL",
			action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
		},
	},

	--default path
	default_cwd = "/home/alfieqashwa/Code/",
	adjust_window_size_when_changing_font_size = false,
	-- Fonts
	font = wezterm.font("FiraCode Nerd Font", { weight = "DemiBold", italic = false }),
	-- font_size = 12.0,
	font_size = 13.0,
	enable_tab_bar = true,
	line_height = 1.0,

	-- Colors
	bold_brightens_ansi_colors = true,
	inactive_pane_hsb = {
		hue = 1.0,
		saturation = 0.7,
		brightness = 1.0,
	},

	-- Backgrounds
	window_background_image = "/usr/share/backgrounds/enddeavourOS.jpeg",
	-- window_background_image = "/home/alfieqashwa/Downloads/blur.jpg",
	-- window_background_image = "/home/alfieqashwa/Pictures/Radiohead-wallpaper.jpg",
	window_background_opacity = 1.0,
	window_decoration = "RESIZE",
	-- macos_window_background_blur = 30,

	window_background_image_hsb = {
		-- Darken the background image by reducing it to 1/3rd
		brightness = 0.1,

		-- You can adjust the hue by scaling its value.
		-- a multiplier of 1.0 leaves the value unchanged.
		hue = 0.9,

		-- You can adjust the saturation also.
		saturation = 1.0,
	},

	-- color_scheme = "Firewatch",
	-- color_scheme = "Banana Blueberry",
	-- color_scheme = "Bright Lights",
	-- color_scheme = "Calamity",
	-- color_scheme = "Catppuccin Mocha (Gogh)",
	-- color_scheme = "Duotone Dark",
	color_scheme = "Chalk",

	scrollback_lines = 3500,
	default_prog = { "/bin/fish" }, -- set default shell to fish
	hide_mouse_cursor_when_typing = true, -- hide mouse cursor when typing in the panel
	default_cursor_style = "SteadyUnderline", -- default cursor style is underline
}
