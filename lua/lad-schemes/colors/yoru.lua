local M = {}

M.colors = {
	white = "#edeff0",
	darker_black = "#060809",
	black = "#0c0e0f", --  nvim bg
	black2 = "#141617",
	lighter_black = "#121415",
	one_bg = "#161819",
	one_bg2 = "#1f2122",
	one_bg3 = "#27292a",
	grey = "#343637",
	grey_fg = "#3e4041",
	grey_fg2 = "#484a4b",
	light_grey = "#505253",
	red = "#DF5B61",
	baby_pink = "#EE6A70",
	pink = "#e8646a",
	line = "#1b1d1e", -- for lines like vertsplit
	green = "#78B892",
	vibrant_green = "#81c19b",
	nord_blue = "#5A84BC",
	blue = "#6791C9",
	yellow = "#ecd28b",
	sun = "#f6dc95",
	purple = "#c58cec",
	dark_purple = "#BC83E3",
	teal = "#70b8ca",
	orange = "#E89982",
	cyan = "#67AFC1",
	statusline_bg = "#101213",
	lightbg = "#1d1f20",
	pmenu_bg = "#78B892",
	folder_bg = "#6791C9",
}

M.theme = {
	base00 = "#0c0e0f",
	base01 = "#121415",
	base02 = "#161819",
	base03 = "#1f2122",
	base04 = "#27292a",
	base05 = "#edeff0",
	base06 = "#e4e6e7",
	base07 = "#f2f4f5",
	base08 = "#f26e74",
	base09 = "#ecd28b",
	base0A = "#e79881",
	base0B = "#82c29c",
	base0C = "#6791C9",
	base0D = "#709ad2",
	base0E = "#c58cec",
	base0F = "#e8646a",
}

M.polish_hl = {
	Pmenu = { bg = M.colors.darker_black },
	PmenuSel = { fg = "none", bg = M.colors.one_bg2 },
	-- GitSignsAdd = { fg = M.colors.pink },
}

return M
