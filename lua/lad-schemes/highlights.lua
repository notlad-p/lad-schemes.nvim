-- TODO: import theme & colors based on config value
local M = {}

M.get_highlights = function(scheme)
	local color_scheme = require("lad-schemes.colors").get_scheme(scheme)
	local colors = color_scheme.colors
	local theme = color_scheme.theme

	-- terminal colors
	vim.g.terminal_color_0 = colors.black
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_5 = colors.purple
	vim.g.terminal_color_6 = colors.cyan
	vim.g.terminal_color_7 = colors.white
	vim.g.terminal_color_8 = colors.grey
	vim.g.terminal_color_9 = colors.red
	vim.g.terminal_color_10 = colors.green
	vim.g.terminal_color_11 = colors.yellow
	vim.g.terminal_color_12 = colors.blue
	vim.g.terminal_color_13 = colors.purple
	vim.g.terminal_color_14 = colors.cyan
	vim.g.terminal_color_15 = colors.white

	return {

		-- Defaults
		Normal = { fg = theme.base05, bg = theme.base00 },
		Bold = { bold = true },
		Debug = { fg = theme.base08 },
		Directory = { fg = theme.base0D },
		Error = { fg = theme.base00, bg = theme.base08 },
		ErrorMsg = { fg = theme.base08, bg = theme.base00 },
		Exception = { fg = theme.base08 },
		FoldColumn = { fg = theme.base0C, bg = theme.base01 },
		Folded = { fg = theme.base03, bg = theme.base01 },
		IncSearch = { fg = theme.base01, bg = theme.base09 },
		Italic = { italic = true },
		Macro = { fg = theme.base08 },
		ModeMsg = { fg = theme.base0B },
		MoreMsg = { fg = theme.base0B },
		Question = { fg = theme.base0D },
		Search = { fg = theme.base01, bg = theme.base0A },
		Substitute = { fg = theme.base01, bg = theme.base0A, sp = "none" },
		SpecialKey = { fg = theme.base03 },
		TooLong = { fg = theme.base08 },
		UnderLined = { fg = theme.base0B },
		Visual = { bg = theme.base02 },
		VisualNOS = { fg = theme.base08 },
		WarningMsg = { fg = theme.base08 },
		WildMenu = { fg = theme.base08, bg = theme.base0A },
		Title = { fg = theme.base0D, sp = "none" },
		Conceal = { bg = "NONE" },
		Cursor = { fg = theme.base00, bg = theme.base05 },
		NonText = { fg = theme.base03 },
		SignColumn = { fg = theme.base03, sp = "NONE" },
		ColorColumn = { bg = theme.base01, sp = "none" },
		CursorColumn = { bg = theme.base01, sp = "none" },
		CursorLine = { bg = "none", sp = "none" },
		QuickFixLine = { bg = theme.base01, sp = "none" },

		MatchWord = { bg = colors.grey, fg = colors.white },
		Pmenu = { bg = colors.one_bg },
		PmenuSbar = { bg = colors.one_bg },
		PmenuSel = { bg = colors.pmenu_bg, fg = colors.black },
		PmenuThumb = { bg = colors.grey },
		MatchParen = { link = "MatchWord" },
		Comment = { fg = colors.grey_fg },
		CursorLineNr = { fg = colors.white },
		LineNr = { fg = colors.grey },

		-- floating windows
		FloatBorder = { fg = colors.blue },
		NormalFloat = { bg = colors.darker_black },
		NvimInternalError = { fg = colors.red },
		WinSeparator = { fg = colors.line },

		TermCursor = { fg = colors.black, bg = colors.red },

		-- packer
		PackerPackageName = { fg = colors.red },
		PackerSuccess = { fg = colors.green },
		PackerStatusSuccess = { fg = theme.base08 },
		PackerStatusCommit = { fg = colors.blue },
		PackeProgress = { fg = colors.blue },
		PackerOutput = { fg = colors.red },
		PackerStatus = { fg = colors.blue },
		PackerHash = { fg = colors.blue },

		-- spell
		SpellBad = { undercurl = true, sp = theme.base08 },

		SpellLocal = {
			undercurl = true,
			sp = theme.base0C,
		},

		SpellCap = {
			undercurl = true,
			sp = theme.base0D,
		},

		SpellRare = {
			undercurl = true,
			sp = theme.base0E,
		},

		healthSuccess = {
			bg = colors.green,
			fg = colors.black,
		},

		-- Alpha
		AlphaHeader = { fg = colors.grey_fg },
		AlphaButtons = { fg = colors.light_grey },

		-- Indent Blankline
		IndentBlanklineChar = { fg = colors.line },
		IndentBlanklineSpaceChar = { fg = colors.line },
		IndentBlanklineContextChar = { fg = colors.grey },
		IndentBlanklineContextStart = { bg = colors.one_bg2 },

		-- Bufferline
		BufferLineBackground = {
			fg = colors.light_grey,
			bg = colors.black2,
		},

		BufferlineIndicatorVisible = {
			fg = colors.black2,
			bg = colors.black2,
		},

		-- buffers
		BufferLineBufferSelected = {
			fg = colors.white,
			bg = colors.black,
		},

		BufferLineBufferVisible = {
			fg = colors.light_grey,
			bg = colors.black2,
		},

		-- for diagnostics = "nvim_lsp"
		BufferLineError = {
			fg = colors.light_grey,
			bg = colors.black2,
		},
		BufferLineErrorDiagnostic = {
			fg = colors.light_grey,
			bg = colors.black2,
		},

		-- close buttons
		BufferLineCloseButton = {
			fg = colors.light_grey,
			bg = colors.black2,
		},
		BufferLineCloseButtonVisible = {
			fg = colors.light_grey,
			bg = colors.black2,
		},
		BufferLineCloseButtonSelected = {
			fg = colors.red,
			bg = colors.black,
		},
		BufferLineFill = {
			fg = colors.grey_fg,
			bg = colors.black2,
		},
		BufferlineIndicatorSelected = {
			fg = colors.black,
			bg = colors.black,
		},

		-- modified
		BufferLineModified = {
			fg = colors.red,
			bg = colors.black2,
		},
		BufferLineModifiedVisible = {
			fg = colors.red,
			bg = colors.black2,
		},
		BufferLineModifiedSelected = {
			fg = colors.green,
			bg = colors.black,
		},

		-- separators
		BufferLineSeparator = {
			fg = colors.black2,
			bg = colors.black2,
		},
		BufferLineSeparatorVisible = {
			fg = colors.black2,
			bg = colors.black2,
		},
		BufferLineSeparatorSelected = {
			fg = colors.black2,
			bg = colors.black2,
		},

		-- tabs
		BufferLineTab = {
			fg = colors.light_grey,
			bg = colors.one_bg3,
		},
		BufferLineTabSelected = {
			fg = colors.black2,
			bg = colors.nord_blue,
		},
		BufferLineTabClose = {
			fg = colors.red,
			bg = colors.black,
		},

		BufferLineDevIconDefaultSelected = {
			bg = "none",
		},

		BufferLineDevIconDefaultInactive = {
			bg = "none",
		},

		BufferLineDuplicate = {
			fg = "NONE",
			bg = colors.black2,
		},
		BufferLineDuplicateSelected = {
			fg = colors.red,
			bg = colors.black,
		},
		BufferLineDuplicateVisible = {
			fg = colors.blue,
			bg = colors.black2,
		},

		-- custom area
		BufferLineRightCustomAreaText1 = {
			fg = colors.white,
		},

		BufferLineRightCustomAreaText2 = {
			fg = colors.red,
		},

		-- Cmp
		CmpItemAbbr = { fg = colors.white },
		CmpItemAbbrMatch = { fg = colors.blue, bold = true },
		CmpBorder = { fg = colors.grey },
		CmpDocBorder = { fg = colors.darker_black, bg = colors.darker_black },
		CmPmenu = { bg = colors.darker_black },

		-- cmp item kinds
		CmpItemKindConstant = { fg = theme.base09 },
		CmpItemKindFunction = { fg = theme.base0D },
		CmpItemKindIdentifier = { fg = theme.base08 },
		CmpItemKindField = { fg = theme.base08 },
		CmpItemKindVariable = { fg = theme.base0E },
		CmpItemKindSnippet = { fg = colors.red },
		CmpItemKindText = { fg = theme.base0B },
		CmpItemKindStructure = { fg = theme.base0E },
		CmpItemKindType = { fg = theme.base0A },
		CmpItemKindKeyword = { fg = theme.base07 },
		CmpItemKindMethod = { fg = theme.base0D },
		CmpItemKindConstructor = { fg = colors.blue },
		CmpItemKindFolder = { fg = theme.base07 },
		CmpItemKindModule = { fg = theme.base0A },
		CmpItemKindProperty = { fg = theme.base08 },
		-- CmpItemKindEnum = { fg = "" },
		CmpItemKindUnit = { fg = theme.base0E },
		-- CmpItemKindClass = { fg = "" },
		CmpItemKindFile = { fg = theme.base07 },
		-- CmpItemKindInterface = { fg = "" },
		CmpItemKindColor = { fg = colors.red },
		CmpItemKindReference = { fg = theme.base05 },
		-- CmpItemKindEnumMember = { fg = "" },
		CmpItemKindStruct = { fg = theme.base0E },
		-- CmpItemKindValue = { fg = "" },
		-- CmpItemKindEvent = { fg = "" },
		CmpItemKindOperator = { fg = theme.base05 },
		CmpItemKindTypeParameter = { fg = theme.base08 },
		CmpItemKindCopilot = { fg = colors.green },

		-- DevIcons
		DevIconDefault = { fg = colors.red },
		DevIconc = { fg = colors.blue },
		DevIconcss = { fg = colors.blue },
		DevIcondeb = { fg = colors.cyan },
		DevIconDockerfile = { fg = colors.cyan },
		DevIconhtml = { fg = colors.baby_pink },
		DevIconjpeg = { fg = colors.dark_purple },
		DevIconjpg = { fg = colors.dark_purple },
		DevIconjs = { fg = colors.sun },
		DevIconkt = { fg = colors.orange },
		DevIconlock = { fg = colors.red },
		DevIconlua = { fg = colors.blue },
		DevIconmp3 = { fg = colors.white },
		DevIconmp4 = { fg = colors.white },
		DevIconout = { fg = colors.white },
		DevIconpng = { fg = colors.dark_purple },
		DevIconpy = { fg = colors.cyan },
		DevIcontoml = { fg = colors.blue },
		DevIconts = { fg = colors.teal },
		DevIconttf = { fg = colors.white },
		DevIconrb = { fg = colors.pink },
		DevIconrpm = { fg = colors.orange },
		DevIconvue = { fg = colors.vibrant_green },
		DevIconwoff = { fg = colors.white },
		DevIconwoff2 = { fg = colors.white },
		DevIconxz = { fg = colors.sun },
		DevIconzip = { fg = colors.sun },
		DevIconZig = { fg = colors.orange },

		-- git

		DiffAdd = {
			fg = colors.blue,
		},

		DiffAdded = {
			fg = colors.green,
		},

		DiffChange = {
			fg = colors.light_grey,
		},

		DiffChangeDelete = {
			fg = colors.red,
		},

		DiffModified = {
			fg = colors.orange,
		},

		DiffDelete = {
			fg = colors.red,
		},

		DiffRemoved = {
			fg = colors.red,
		},

		-- git commits
		gitcommitOverflow = {
			fg = theme.base08,
		},

		gitcommitSummary = {
			fg = theme.base08,
		},

		gitcommitComment = {
			fg = theme.base03,
		},

		gitcommitUntracked = {
			fg = theme.base03,
		},

		gitcommitDiscarded = {
			fg = theme.base03,
		},

		gitcommitSelected = {
			fg = theme.base03,
		},

		gitcommitHeader = {
			fg = theme.base0E,
		},

		gitcommitSelectedType = {
			fg = theme.base0D,
		},

		gitcommitUnmergedType = {
			fg = theme.base0D,
		},

		gitcommitDiscardedType = {
			fg = theme.base0D,
		},

		gitcommitBranch = {
			fg = theme.base09,
			bold = true,
		},

		gitcommitUntrackedFile = {
			fg = theme.base0A,
		},

		gitcommitUnmergedFile = {
			fg = theme.base08,
			bold = true,
		},

		gitcommitDiscardedFile = {
			fg = theme.base08,
			bold = true,
		},

		gitcommitSelectedFile = {
			fg = theme.base0B,
			bold = true,
		},

		-- LSP
		-- LSP References
		LspReferenceText = { fg = colors.darker_black, bg = colors.white },
		LspReferenceRead = { fg = colors.darker_black, bg = colors.white },
		LspReferenceWrite = { fg = colors.darker_black, bg = colors.white },

		-- Lsp Diagnostics
		DiagnosticHint = { fg = colors.purple },
		DiagnosticError = { fg = colors.red },
		DiagnosticWarn = { fg = colors.yellow },
		DiagnosticInformation = { fg = colors.green },
		LspSignatureActiveParameter = { fg = colors.black, bg = colors.green },

		RenamerTitle = { fg = colors.black, bg = colors.red },
		RenamerBorder = { fg = colors.red },

		-- Mason
		MasonHeader = { bg = colors.red, fg = colors.black },
		MasonHighlight = { fg = colors.blue },
		MasonHighlightBlock = { fg = colors.black, bg = colors.green },
		MasonHighlightBlockBold = { link = "MasonHighlightBlock" },
		MasonHeaderSecondary = { link = "MasonHighlightBlock" },
		MasonMuted = { fg = colors.light_grey },
		MasonMutedBlock = { fg = colors.light_grey, bg = colors.one_bg },

		-- notify
		NotifyERRORBorder = { fg = colors.red },
		NotifyERRORIcon = { fg = colors.red },
		NotifyERRORTitle = { fg = colors.red },
		NotifyWARNBorder = { fg = colors.orange },
		NotifyWARNIcon = { fg = colors.orange },
		NotifyWARNTitle = { fg = colors.orange },
		NotifyINFOBorder = { fg = colors.green },
		NotifyINFOIcon = { fg = colors.green },
		NotifyINFOTitle = { fg = colors.green },
		NotifyDEBUGBorder = { fg = colors.grey },
		NotifyDEBUGIcon = { fg = colors.grey },
		NotifyDEBUGTitle = { fg = colors.grey },
		NotifyTRACEBorder = { fg = colors.purple },
		NotifyTRACEIcon = { fg = colors.purple },
		NotifyTRACETitle = { fg = colors.purple },

		-- NvimTree
		NvimTreeEmptyFolderName = { fg = colors.folder_bg },
		NvimTreeEndOfBuffer = { fg = colors.darker_black },
		NvimTreeFolderIcon = { fg = colors.folder_bg },
		NvimTreeFolderName = { fg = colors.folder_bg },
		NvimTreeGitDirty = { fg = colors.red },
		NvimTreeIndentMarker = { fg = colors.grey_fg },
		NvimTreeNormal = { bg = colors.darker_black },
		NvimTreeNormalNC = { bg = colors.darker_black },
		NvimTreeOpenedFolderName = { fg = colors.folder_bg },
		NvimTreeGitIgnored = { fg = colors.light_grey },

		NvimTreeWinSeparator = {
			fg = colors.darker_black,
			bg = colors.darker_black,
		},

		NvimTreeWindowPicker = {
			fg = colors.red,
			bg = colors.black2,
		},

		NvimTreeCursorLine = {
			bg = colors.black2,
		},

		NvimTreeGitNew = {
			fg = colors.yellow,
		},

		NvimTreeGitDeleted = {
			fg = colors.red,
		},

		NvimTreeSpecialFile = {
			fg = colors.yellow,
			bold = true,
		},

		NvimTreeRootFolder = {
			fg = colors.red,
			bold = true,
		},

		-- Status Line
		StatusLine = {
			bg = colors.statusline_bg,
		},

		St_gitIcons = {
			fg = colors.light_grey,
			bg = colors.statusline_bg,
			bold = true,
		},

		-- LSP

		St_lspError = {
			fg = colors.red,
			bg = colors.statusline_bg,
		},

		St_lspWarning = {
			fg = colors.yellow,
			bg = colors.statusline_bg,
		},

		St_LspHints = {
			fg = colors.purple,
			bg = colors.statusline_bg,
		},

		St_LspInfo = {
			fg = colors.green,
			bg = colors.statusline_bg,
		},

		St_LspStatus = {
			fg = colors.nord_blue,
			bg = colors.statusline_bg,
		},

		St_LspProgress = {
			fg = colors.green,
			bg = colors.statusline_bg,
		},

		St_LspStatus_Icon = {
			fg = colors.black,
			bg = colors.nord_blue,
		},

		-- MODES

		St_NormalMode = {
			bg = colors.nord_blue,
			fg = colors.black,
			bold = true,
		},

		St_InsertMode = {
			bg = colors.dark_purple,
			fg = colors.black,

			bold = true,
		},

		St_TerminalMode = {
			bg = colors.green,
			fg = colors.black,
			bold = true,
		},

		St_NTerminalMode = {
			bg = colors.yellow,
			fg = colors.black,
			bold = true,
		},

		St_VisualMode = {
			bg = colors.cyan,
			fg = colors.black,
			bold = true,
		},

		St_ReplaceMode = {
			bg = colors.orange,
			fg = colors.black,

			bold = true,
		},

		St_ConfirmMode = {
			bg = colors.teal,
			fg = colors.black,

			bold = true,
		},

		St_CommandMode = {
			bg = colors.green,
			fg = colors.black,

			bold = true,
		},

		St_SelectMode = {
			bg = colors.nord_blue,
			fg = colors.black,

			bold = true,
		},

		-- Separators for mode
		St_NormalModeSep = {
			fg = colors.nord_blue,
			bg = colors.grey,
		},

		St_InsertModeSep = {
			fg = colors.dark_purple,
			bg = colors.grey,
		},

		St_TerminalModeSep = {
			fg = colors.green,
			bg = colors.grey,
		},

		St_NTerminalModeSep = {
			fg = colors.yellow,
			bg = colors.grey,
		},

		St_VisualModeSep = {
			fg = colors.cyan,
			bg = colors.grey,
		},

		St_ReplaceModeSep = {
			fg = colors.orange,
			bg = colors.grey,
		},

		St_ConfirmModeSep = {
			fg = colors.teal,
			bg = colors.grey,
		},

		St_CommandModeSep = {
			fg = colors.green,
			bg = colors.grey,
		},

		St_SelectModeSep = {
			fg = colors.nord_blue,
			bg = colors.grey,
		},

		St_EmptySpace = {
			fg = colors.grey,
			bg = colors.lightbg,
		},

		St_EmptySpace2 = {
			fg = colors.grey,
			bg = colors.statusline_bg,
		},

		St_file_info = {
			bg = colors.lightbg,
			fg = colors.white,
		},

		St_file_sep = {
			bg = colors.statusline_bg,
			fg = colors.lightbg,
		},

		St_cwd_icon = {
			fg = colors.one_bg,
			bg = colors.red,
		},

		St_cwd_text = {
			fg = colors.white,
			bg = colors.lightbg,
		},

		St_cwd_sep = {
			fg = colors.red,
			bg = colors.statusline_bg,
		},

		St_pos_sep = {
			fg = colors.green,
			bg = colors.lightbg,
		},

		St_pos_icon = {
			fg = colors.black,
			bg = colors.green,
		},

		St_pos_text = {
			fg = colors.green,
			bg = colors.lightbg,
		},

		-- Syntax
		Boolean = {
			fg = theme.base09,
		},

		Character = {
			fg = theme.base08,
		},

		Conditional = {
			fg = theme.base0E,
		},

		Constant = {
			fg = theme.base08,
		},

		Define = {
			fg = theme.base0E,
			sp = "none",
		},

		Delimiter = {
			fg = theme.base0F,
		},

		Float = {
			fg = theme.base09,
		},

		Variable = {
			fg = theme.base05,
		},

		Function = {
			fg = theme.base0D,
		},

		Identifier = {
			fg = theme.base08,
			sp = "none",
		},

		Include = {
			fg = theme.base0D,
		},

		Keyword = {
			fg = theme.base0E,
		},

		Label = {
			fg = theme.base0A,
		},

		Number = {
			fg = theme.base09,
		},

		Operator = {
			fg = theme.base05,
			sp = "none",
		},

		PreProc = {
			fg = theme.base0A,
		},

		Repeat = {
			fg = theme.base0A,
		},

		Special = {
			fg = theme.base0C,
		},

		SpecialChar = {
			fg = theme.base0F,
		},

		Statement = {
			fg = theme.base08,
		},

		StorageClass = {
			fg = theme.base0A,
		},

		String = {
			fg = theme.base0B,
		},

		Structure = {
			fg = theme.base0E,
		},

		Tag = {
			fg = theme.base0A,
		},

		Todo = {
			fg = theme.base0A,
			bg = theme.base01,
		},

		Type = {
			fg = theme.base0A,
			sp = "none",
		},

		Typedef = {
			fg = theme.base0A,
		},

		-- Tab Line
		TblineFill = {
			bg = colors.black2,
		},

		TbLineBufOn = {
			fg = colors.white,
			bg = colors.black,
		},

		TbLineBufOff = {
			fg = colors.light_grey,
			bg = colors.black2,
		},

		TbLineBufOnModified = {
			fg = colors.green,
			bg = colors.black,
		},

		TbBufLineBufOffModified = {
			fg = colors.red,
			bg = colors.black2,
		},

		TbLineBufOnClose = {
			fg = colors.red,
			bg = colors.black,
		},

		TbLineBufOffClose = {
			fg = colors.light_grey,
			bg = colors.black2,
		},

		TblineTabNewBtn = {
			fg = colors.white,
			bg = colors.one_bg3,
			bold = true,
		},

		TbLineTabOn = {
			fg = colors.black,
			bg = colors.nord_blue,
			bold = true,
		},

		TbLineTabOff = {
			fg = colors.white,
			bg = colors.one_bg2,
		},

		TbLineTabCloseBtn = {
			fg = colors.black,
			bg = colors.nord_blue,
		},

		TBTabTitle = {
			fg = colors.black,
			bg = colors.white,
		},

		TbLineThemeToggleBtn = {
			bold = true,
			fg = colors.white,
			bg = colors.one_bg3,
		},

		TbLineCloseAllBufsBtn = {
			bold = true,
			bg = colors.red,
			fg = colors.black,
		},

		-- Telescope
		TelescopeBorder = {
			fg = colors.grey_fg2,
			bg = colors.darker_black,
		},

		TelescopePromptBorder = {
			fg = colors.black2,
			bg = colors.black2,
		},

		TelescopePromptNormal = {
			fg = colors.white,
			bg = colors.black2,
		},

		TelescopePromptPrefix = {
			fg = colors.red,
			bg = colors.black2,
		},

		TelescopeNormal = { bg = colors.darker_black },

		TelescopePreviewTitle = {
			fg = colors.black,
			bg = colors.green,
		},

		TelescopePromptTitle = {
			fg = colors.black,
			bg = colors.red,
		},

		TelescopeResultsTitle = {
			fg = colors.darker_black,
			bg = colors.darker_black,
		},

		TelescopeSelection = { bg = colors.black2, fg = colors.white },

		TelescopeResultsDiffAdd = {
			fg = colors.green,
		},

		TelescopeResultsDiffChange = {
			fg = colors.yellow,
		},

		TelescopeResultsDiffDelete = {
			fg = colors.red,
		},

		-- Telescope
		["@annotation"] = {
			fg = theme.base0F,
		},

		["@attribute"] = {
			fg = theme.base0A,
		},

		["@character"] = {
			fg = theme.base08,
		},

		["@constructor"] = {
			fg = theme.base0C,
		},

		["@constant.builtin"] = {
			fg = theme.base09,
		},

		["@constant.macro"] = {
			fg = theme.base08,
		},

		["@error"] = {
			fg = theme.base08,
		},

		["@exception"] = {
			fg = theme.base08,
		},

		["@float"] = {
			fg = theme.base09,
		},

		["@keyword"] = {
			fg = theme.base0E,
		},

		["@keyword.function"] = {
			fg = theme.base0E,
		},

		["@keyword.return"] = {
			fg = theme.base0E,
		},

		["@function"] = {
			fg = theme.base0D,
		},

		["@function.builtin"] = {
			fg = theme.base0D,
		},

		["@function.macro"] = {
			fg = theme.base08,
		},

		["@keyword.operator"] = {
			fg = theme.base0E,
		},

		["@method"] = {
			fg = theme.base0D,
		},

		["@namespace"] = {
			fg = theme.base08,
		},

		["@none"] = {
			fg = theme.base05,
		},

		["@parameter"] = {
			fg = theme.base08,
		},

		["@reference"] = {
			fg = theme.base05,
		},

		["@punctuation.bracket"] = {
			fg = theme.base0F,
		},

		["@punctuation.delimiter"] = {
			fg = theme.base0F,
		},

		["@punctuation.special"] = {
			fg = theme.base08,
		},

		["@string.regex"] = {
			fg = theme.base0C,
		},

		["@string.escape"] = {
			fg = theme.base0C,
		},

		["@symbol"] = {
			fg = theme.base0B,
		},

		["@tag"] = {
			link = "Tag",
		},

		["@tag.attribute"] = {
			link = "@property",
		},

		["@tag.delimiter"] = {
			fg = theme.base0F,
		},

		["@text"] = {
			fg = theme.base05,
		},

		["@text.strong"] = {
			bold = true,
		},

		["@text.emphasis"] = {
			fg = theme.base09,
		},

		["@text.strike"] = {
			fg = theme.base00,
			strikethrough = true,
		},

		["@text.literal"] = {
			fg = theme.base09,
		},

		["@text.uri"] = {
			fg = theme.base09,
			underline = true,
		},

		["@type.builtin"] = {
			fg = theme.base0A,
		},

		["@variable"] = {
			fg = theme.base05,
		},

		["@variable.builtin"] = {
			fg = theme.base09,
		},

		-- variable.global

		["@definition"] = {
			sp = theme.base04,
			underline = true,
		},

		TSDefinitionUsage = {
			sp = theme.base04,
			underline = true,
		},

		["@scope"] = {
			bold = true,
		},

		["@field"] = {
			fg = theme.base08,
		},

		["@field.key"] = {
			fg = theme.base0D,
		},

		["@property"] = {
			fg = theme.base08,
		},

		["@include"] = {
			link = "Include",
		},

		["@conditional"] = {
			link = "Conditional",
		},

		-- WhichKey
		WhichKey = { fg = colors.blue },
		WhichKeySeparator = { fg = colors.light_grey },
		WhichKeyDesc = { fg = colors.red },
		WhichKeyGroup = { fg = colors.green },
		WhichKeyValue = { fg = colors.green },

		GitSignsAdd = { fg = colors.green },
		GitSignsChange = { fg = colors.orange },
		GitSignsDelete = { fg = colors.red },

		-- vim-illuminate
		IlluminatedWordText = { bg = colors.one_bg2, underline = false },
		IlluminatedWordRead = { bg = colors.one_bg2, underline = false },
		IlluminatedWordWrite = { bg = colors.one_bg2, underline = false },
	}
end

return M
