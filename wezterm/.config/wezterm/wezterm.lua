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
	--
	-- Fonts
	font = wezterm.font("FiraCode Nerd Font", { weight = "DemiBold", italic = false }),
	font_size = 12.0,
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
	window_background_opacity = 0.9,
	-- text_background_opacity = 0.5,

	window_decoration = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,

	-- window_background_image = "/home/alfieqashwa/Pictures/wezterm-images/bg-blurred-darker.png",
	-- window_background_image = "/home/alfieqashwa/Downloads/blur.jpg",
	-- window_background_image = "/home/alfieqashwa/Pictures/Radiohead-wallpaper.jpg",
	-- window_background_image = "/usr/share/backgrounds/enddeavourOS.jpeg",
	-- window_background_image_hsb = {

	-- 	-- You can adjust the hue by scaling its value.
	-- 	-- a multiplier of 1.0 leaves the value unchanged.
	-- 	hue = 3.0,
	-- 	-- You can adjust the saturation also.
	-- 	saturation = 1.1,
	-- 	-- Darken the background image by reducing it to 1/3rd
	-- 	brightness = 0.06,
	-- },

	-- window_padding = {
	-- 	left = 3,
	-- 	right = 3,
	-- 	top = 3,
	-- 	bottom = 3,
	-- },

	color_scheme = "Chalk",
	-- color_scheme = "Firewatch",
	-- color_scheme = "Banana Blueberry",
	-- color_scheme = "Bright Lights",
	-- color_scheme = "Calamity",
	-- color_scheme = "Catppuccin Mocha (Gogh)",
	-- color_scheme = "Duotone Dark",

	scrollback_lines = 3500, -- default is 3500
	default_prog = { "/bin/fish" }, -- set default shell to fish
	hide_mouse_cursor_when_typing = true, -- hide mouse cursor when typing in the panel
	default_cursor_style = "SteadyUnderline", -- default cursor style is underline
}
