local M = {}

M.get_hls = function(scheme)
	local color_scheme = require("lad-schemes.colors").get_scheme(scheme)
	local colors = color_scheme.colors

	return {

		BufferLineFill = {
			fg = colors.grey_fg,
			bg = colors.darker_black,
		},

		BufferLineBackground = {
			fg = colors.light_grey,
			bg = colors.darker_black,
		},

		-- tabs
		BufferLineTab = {
			fg = colors.light_grey,
			bg = colors.one_bg3,
		},
		BufferLineTabSelected = {
			fg = colors.black,
			bg = colors.nord_blue,
		},
		BufferLineTabClose = {
			fg = colors.red,
			bg = colors.darker_black,
		},

		BufferlineIndicatorVisible = {
			fg = colors.black2,
			bg = colors.black2,
		},

		-- buffers
		BufferLineBufferSelected = {
			fg = colors.white,
			bg = colors.black,
			bold = true,
		},

		BufferLineBufferVisible = {
			fg = colors.light_grey,
			bg = colors.black,
		},

		BufferLineDiagnostic = {
			fg = colors.red,
			bg = colors.green,
		},

		-- for diagnostics = "nvim_lsp"
		BufferLineError = {
			fg = colors.light_grey,
			bg = colors.darker_black,
		},
		BufferLineErrorDiagnostic = {
			fg = colors.light_grey,
			bg = colors.darker_black,
		},

		-- close buttons
		BufferLineCloseButton = {
			fg = colors.light_grey,
			bg = colors.darker_black,
		},
		BufferLineCloseButtonVisible = {
			fg = colors.light_grey,
			bg = colors.black,
		},
		BufferLineCloseButtonSelected = {
			fg = colors.red,
			bg = colors.black,
		},
		BufferlineIndicatorSelected = {
			fg = colors.blue,
			bg = colors.black,
		},

		-- modified
		BufferLineModified = {
			fg = colors.red,
			bg = colors.darker_black,
		},
		BufferLineModifiedVisible = {
			fg = colors.red,
			bg = colors.black,
		},
		BufferLineModifiedSelected = {

			fg = colors.green,
			bg = colors.black,
		},

		-- separators
		BufferLineSeparator = {
			fg = colors.black,
			bg = colors.darker_black,
		},
		BufferLineSeparatorVisible = {
			fg = colors.black,
			bg = colors.black,
		},
		BufferLineSeparatorSelected = {
			fg = colors.black,
			bg = colors.black,
		},

		BufferLineDevIconDefaultSelected = {
			bg = colors.darker_black,
		},
		BufferLineDevIconDefaultInactive = {
			bg = colors.darker_black,
		},

		-- BufferLineInfo = {
		-- 	bg = colors.red,
		-- },

		BufferLineDuplicate = {
			fg = colors.light_grey,
			bg = colors.black,
		},

		BufferLineDuplicateSelected = {
			fg = colors.light_grey,
			bg = colors.black,
		},
		BufferLineDuplicateVisible = {
			fg = colors.blue,
			bg = colors.black,
		},

		-- custom area
		BufferLineRightCustomAreaText1 = {
			fg = colors.white,
		},

		BufferLineRightCustomAreaText2 = {
			fg = colors.red,
		},

		BufferLineWarning = {
			bg = colors.darker_black,
			default = true,
			fg = colors.grey_fg,
			sp = colors.yellow,
		},

		BufferLineWarningDiagnostic = {
			bg = colors.darker_black,
			default = true,
			fg = colors.grey_fg,
			sp = colors.yellow,
		},

		BufferLineWarningDiagnosticSelected = {
			bg = colors.black,
			bold = true,
			cterm = { bold = true, italic = true },
			default = true,
			fg = colors.yellow,
			italic = true,
			sp = colors.yellow,
		},

		-- BufferLineWarningDiagnosticVisible = { bg = colors.black, default = true, fg = "#2E3030" },

		BufferLineWarningSelected = {
			bg = colors.black,
			bold = true,
			cterm = { bold = true, italic = true },
			default = true,
			fg = colors.yellow,
			italic = true,
			sp = colors.yellow,
		},

		-- BufferLineWarningVisible = { bg = colors.darker_black, default = true, fg = "#3E4041" },

		-- { { group = "BufferLineBackground", hl = { bg = "#060809", fg = "#505253" } } },
		-- {
		-- 	{
		-- 		group = "BufferLineBuffer",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#3E4041" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineBufferSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true },
		-- 			fg = "#EDEFF0",
		-- 		},
		-- 	},
		-- },
		-- { { group = "BufferLineBufferVisible", hl = { bg = "#0C0E0F", fg = "#505253" } } },
		-- { { group = "BufferLineCloseButton", hl = { bg = "#060809", fg = "#505253" } } },
		-- {
		-- 	{
		-- 		group = "BufferLineCloseButtonSelected",
		-- 		hl = { bg = "#0C0E0F", fg = "#DF5B61" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineCloseButtonVisible",
		-- 		hl = { bg = "#0C0E0F", fg = "#505253" },
		-- 	},
		-- },
		-- { { group = "BufferLineDevIconDefaultInactive", hl = { bg = "#060809" } } },
		-- { { group = "BufferLineDevIconDefaultSelected", hl = { bg = "#060809" } } },
		-- { { group = "BufferLineDiagnostic", hl = { bg = "#78B892", fg = "#DF5B61" } } },
		-- {
		-- 	{
		-- 		group = "BufferLineDiagnosticSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#B1B3B4",
		-- 			italic = true,
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineDiagnosticVisible",
		-- 		hl = { bg = "#0B0C0D", default = true, fg = "#2E3030" },
		-- 	},
		-- },
		-- { { group = "BufferLineDuplicate", hl = { bg = "#0C0E0F", fg = "#505253" } } },
		-- {
		-- 	{ group = "BufferLineDuplicateSelected", hl = { bg = "#0C0E0F", fg = "#505253" } },
		-- },
		-- { { group = "BufferLineDuplicateVisible", hl = { bg = "#0C0E0F", fg = "#6791C9" } } },
		-- { { group = "BufferLineError", hl = { bg = "#060809", fg = "#505253" } } },
		-- { { group = "BufferLineErrorDiagnostic", hl = { bg = "#060809", fg = "#505253" } } },
		-- {
		-- 	{
		-- 		group = "BufferLineErrorDiagnosticSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#A74448",
		-- 			italic = true,
		-- 			sp = "#A74448",
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineErrorDiagnosticVisible",
		-- 		hl = { bg = "#0B0C0D", default = true, fg = "#2E3030" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineErrorSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#DF5B61",
		-- 			italic = true,
		-- 			sp = "#DF5B61",
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineErrorVisible",
		-- 		hl = { bg = "#0B0C0D", default = true, fg = "#3E4041" },
		-- 	},
		-- },
		-- { { group = "BufferLineFill", hl = { bg = "#060809", fg = "#3E4041" } } },
		-- {
		-- 	{
		-- 		group = "BufferLineGroupLabel",
		-- 		hl = { bg = "#3E4041", default = true, fg = "#060708" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineGroupSeparator",
		-- 		hl = { bg = "#060708", default = true, fg = "#3E4041" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineHint",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#3E4041", sp = "#C58CEC" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineHintDiagnostic",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#2E3030", sp = "#9369B1" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineHintDiagnosticSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#9369B1",
		-- 			italic = true,
		-- 			sp = "#9369B1",
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineHintDiagnosticVisible",
		-- 		hl = { bg = "#0B0C0D", default = true, fg = "#2E3030" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineHintSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#C58CEC",
		-- 			italic = true,
		-- 			sp = "#C58CEC",
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineHintVisible",
		-- 		hl = { bg = "#0B0C0D", default = true, fg = "#3E4041" },
		-- 	},
		-- },
		-- {
		-- 	{ group = "BufferLineIndicatorSelected", hl = { bg = "#0C0E0F", fg = "#6791C9" } },
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineInfo",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#3E4041", sp = "#8CF8F7" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineInfoDiagnostic",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#2E3030", sp = "#69BAB9" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineInfoDiagnosticSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#69BAB9",
		-- 			italic = true,
		-- 			sp = "#69BAB9",
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineInfoDiagnosticVisible",
		-- 		hl = { bg = "#0B0C0D", default = true, fg = "#2E3030" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineInfoSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#8CF8F7",
		-- 			italic = true,
		-- 			sp = "#8CF8F7",
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineInfoVisible",
		-- 		hl = { bg = "#0B0C0D", default = true, fg = "#3E4041" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineMiniIconsAzure",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#709AD2" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineMiniIconsGreen",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#B3F6C0" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineMiniIconsGreenInactive",
		-- 		hl = { bg = "#0B0C0D", default = true, fg = "#B3F6C0" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineMiniIconsGreenSelected",
		-- 		hl = { bg = "#0C0E0F", default = true, fg = "#B3F6C0" },
		-- 	},
		-- },
		-- { { group = "BufferLineMiniIconsGrey", hl = { bg = "#090A0B", default = true } } },
		-- {
		-- 	{
		-- 		group = "BufferLineMiniIconsOrange",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#ECD28B" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineMiniIconsYellow",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#ECD28B" },
		-- 	},
		-- },
		-- { { group = "BufferLineModified", hl = { bg = "#060809", fg = "#DF5B61" } } },
		-- { { group = "BufferLineModifiedSelected", hl = { bg = "#0C0E0F", fg = "#78B892" } } },
		-- { { group = "BufferLineModifiedVisible", hl = { bg = "#0C0E0F", fg = "#DF5B61" } } },
		-- {
		-- 	{
		-- 		group = "BufferLineNumbers",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#3E4041" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineNumbersSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#EDEFF0",
		-- 			italic = true,
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineNumbersVisible",
		-- 		hl = { bg = "#0B0C0D", default = true, fg = "#3E4041" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineOffsetSeparator",
		-- 		hl = { bg = "#060708", default = true, fg = "#1B1D1E" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLinePick",
		-- 		hl = {
		-- 			bg = "#090A0B",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#DF5B61",
		-- 			italic = true,
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLinePickSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#DF5B61",
		-- 			italic = true,
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLinePickVisible",
		-- 		hl = {
		-- 			bg = "#0B0C0D",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#DF5B61",
		-- 			italic = true,
		-- 		},
		-- 	},
		-- },
		-- { { group = "BufferLineRightCustomAreaText1", hl = { fg = "#EDEFF0" } } },
		-- { { group = "BufferLineRightCustomAreaText2", hl = { fg = "#DF5B61" } } },
		-- { { group = "BufferLineSeparator", hl = { bg = "#060809", fg = "#0C0E0F" } } },
		-- {
		-- 	{ group = "BufferLineSeparatorSelected", hl = { bg = "#0C0E0F", fg = "#0C0E0F" } },
		-- },
		-- { { group = "BufferLineSeparatorVisible", hl = { bg = "#0C0E0F", fg = "#0C0E0F" } } },
		-- { { group = "BufferLineTab", hl = { bg = "#27292A", fg = "#505253" } } },
		-- { { group = "BufferLineTabClose", hl = { bg = "#060809", fg = "#DF5B61" } } },
		-- { { group = "BufferLineTabSelected", hl = { bg = "#5A84BC", fg = "#0C0E0F" } } },
		-- {
		-- 	{
		-- 		group = "BufferLineTabSeparator",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#060708" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineTabSeparatorSelected",
		-- 		hl = { bg = "#0C0E0F", default = true, fg = "#060708" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineTruncMarker",
		-- 		hl = { bg = "#060708", default = true, fg = "#3E4041" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineWarning",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#3E4041", sp = "#ECD28B" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineWarningDiagnostic",
		-- 		hl = { bg = "#090A0B", default = true, fg = "#2E3030", sp = "#B19D68" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineWarningDiagnosticSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#B19D68",
		-- 			italic = true,
		-- 			sp = "#B19D68",
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineWarningDiagnosticVisible",
		-- 		hl = { bg = "#0B0C0D", default = true, fg = "#2E3030" },
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineWarningSelected",
		-- 		hl = {
		-- 			bg = "#0C0E0F",
		-- 			bold = true,
		-- 			cterm = { bold = true, italic = true },
		-- 			default = true,
		-- 			fg = "#ECD28B",
		-- 			italic = true,
		-- 			sp = "#ECD28B",
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	{
		-- 		group = "BufferLineWarningVisible",
		-- 		hl = { bg = "#0B0C0D", default = true, fg = "#3E4041" },
		-- 	},
		-- },
	}
end

return M
