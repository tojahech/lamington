local c = require("lamington.colors").named_colors
local s = require("lamington.colors").semantic_colors

return {

	--
	-- Text
	--

	Normal = { fg = c.canopy_40, bg = c.shadow_20 }, -- Normal text
	NormalNC = { bg = c.shadow_10 }, -- Normal text in inactive windows
	Title = { fg = c.canopy_60 }, -- Titles for things like the help window, autocomplete box, etc.
	Underlined = { underline = true }, -- Meta, underlined text
	Bold = { bold = true }, -- Meta, bold text
	Italic = { italic = true }, -- Meta, italic text
	NonText = { fg = c.canopy_20 }, -- Characters that don't really exist like soft linebreaks
	Conceal = { fg = c.canopy_60 }, -- Placeholder characters substituted for concealed text

	--
	-- Selections
	--

	Cursor = { fg = c.canopy_20, bg = c.canopy_60 }, -- Highlights current cursor position
	-- CurSearch = {} -- Search pattern under cursor
	-- CursorLineNr = { fg = c.soil_70 }, -- Highlight line number of cursor
	-- CursorLine   = { theme.none, theme.bg1 }, -- Highlight line of cursor when `cursorline` set
	-- CursorColumn = { theme.none, theme.bg1 }, -- Highlight column of cursor when `cursorline` set
	MatchParen = { link = "Cursor" }, -- Parenthesis matching the one under the cursor

	Search = { fg = c.foilage_70, bg = c.foilage_30 }, -- Last search pattern
	IncSearch = { link = "Search" }, -- Search pattern as you type
	Substitute = { link = "Search" }, -- Highlight for :s///c

	--
	-- Structures
	--

	Visual = { fg = c.foilage_70, bg = c.foilage_30 }, -- Visual mode selection

	VertSplit = { fg = s.scaffold }, -- Separator between vertical splits
	WinSeparator = { fg = s.scaffold }, -- Separator between horizontal splits

	LineNr = { fg = s.scaffold }, -- Line number column
	SignColumn = { link = "LineNr" }, -- Column where signs are displayed
	EndOfBuffer = { fg = "NONE", bg = "NONE" }, -- ~ lines at the end of a buffer
	ColorColumn = { link = "LineNr" }, -- color for columns highlighted with cc

	Folded = { fg = c.canopy_60, bg = c.foilage_30 }, -- Line color for collapsed folds
	FoldColumn = { fg = c.canopy_60, bg = c.foilage_30 }, -- Column in the sign column used for fold markers

	--
	-- Interface
	--

	StatusLine = { fg = c.canopy_20, bg = c.shadow_10 }, -- Status line of current window
	StatusLineNC = { fg = c.canopy_20, bg = c.shadow_10 }, -- Status line of non-current windows

	TabLine = { fg = c.canopy_40, bg = c.shadow_30 }, -- Tab line, inactive tabs
	TabLineFill = { fg = c.canopy_40, bg = c.shadow_30 }, -- Tab line, empty space
	TabLineSel = { fg = c.canopy_40, bg = c.shadow_30 }, -- Tab line, active tab

	NormalFloat = { fg = c.canopy_40, bg = c.shadow_30 }, -- Normal text in floating windows
	FloatBorder = { fg = c.shadow_30 }, -- Border of floating windows
	FloatTitle = { fg = c.canopy_60 }, -- Title of floating windows
	FloatFooter = { fg = c.canopy_60 }, -- Footer of floating windows

	Pmenu = { fg = c.canopy_40, bg = c.shadow_30 }, -- popup menu normal item
	PmenuSel = { fg = c.foilage_70, bg = c.foilage_30 }, -- popup menu selected item
	PmenuSbar = { bg = c.shadow_30 }, -- popup menu scrollbar
	PmenuThumb = { bg = c.canopy_60 }, -- Current location indicator in popup menus

	-- QuickFixLine = { theme.none, theme.bg1 }, -- Current line in the quickfix window
	Question = { fg = c.lorikeet_b_70 }, -- prompts and yes/no questions
	Directory = { fg = c.canopy_20 }, -- Directory names

	--
	-- Status and messages
	--

	Todo = { fg = c.lorikeet_b_70 },
	Error = { fg = c.error },
	Warning = { fg = c.lorikeet_y_70 },
	Info = { fg = c.lorikeet_y_70 },
	Debug = { fg = c.lorikeet_b_70 },

	OkText = { fg = c.lorikeet_g_70 },
	ErrorText = { fg = c.lorikeet_r_70 },
	WarningText = { fg = c.lorikeet_o_70 },
	InfoText = { fg = c.lorikeet_y_70 },
	HintText = { fg = c.lorikeet_b_70 },

	ErrorMsg = { link = "Error" }, -- Error messages on the command line
	WarningMsg = { link = "Warning" },
	ModeMsg = { link = "Info" }, -- Message for -- INSERT -- and similar

	DiffAdd = { fg = s.add },
	DiffChange = { fg = s.diff },
	DiffDelete = { fg = s.minus },

	--
	-- Syntax highlighting
	--

	Comment = { fg = c.canopy_20, italic = true },
	SpecialComment = { bold = true },
	-- Whitespace = {},

	Constant = { link = "Normal" },
	String = { fg = c.canopy_60 },
	Character = { fg = c.canopy_60 },
	Number = { fg = c.canopy_60 },
	Float = { fg = c.canopy_60 },
	Boolean = { fg = c.canopy_60 },

	Identifier = { link = "Normal" },
	Parameter = { fg = c.canopy_40, italic = true },

	Function = { fg = c.canopy_40, bold = true },

	Keyword = { fg = c.foilage_50, bold = true },
	Conditional = { link = "Keyword" },
	Repeat = { link = "Keyword" },
	Label = { link = "Keyword" },
	Statement = { link = "Keyword" },
	Exception = { link = "Keyword" },
	Operator = { fg = c.foilage_50 },

	PreProc = { fg = c.foilage_50 },
	-- Include = { fg = c["re"], bg = "NONE" },
	-- Define = { fg = c["ma"], bg = "NONE" },
	-- Macro = { fg = c["ma"], bg = "NONE" },
	-- PreCondit = { fg = c["ma"], bg = "NONE" },

	Type = { fg = c.canopy_60, bold = true },
	Typedef = { link = "Type" },
	Structure = { fg = c.sunray_60 },

	Special = { fg = c.foilage_50 },
	-- SpecialChar = { fg = c["ma"], bg = "NONE" },
	-- Delimiter = { link = "Special" },

	Tag = { link = "Comment" },

	--
	-- Treesitter (list from treesitter documentation)
	--

	["@comment"] = { link = "Comment" },
	-- ["@comment.documentation"] = { link = "Normal" },
	-- ["@comment.error"] = { link = "Normal" },
	-- ["@comment.warning"] = { link = "Normal" },
	["@comment.todo"] = { bold = true },
	["@comment.note"] = { bold = true },

	["@constant"] = { link = "Constant" },
	-- ["@constant.builtin"] = { link = "Normal" },
	-- ["@constant.macro"] = { link = "Normal" },
	["@string"] = { link = "String" },
	-- ["@string.documentation"] = { link = "Normal" },
	-- ["@string.regexp"] = { link = "Normal" },
	-- ["@string.escape"] = { link = "Normal" },
	-- ["@string.special"] = { link = "Normal" },
	-- ["@string.special.symbol"] = { link = "Normal" },
	-- ["@string.special.path"] = { link = "Normal" },
	-- ["@string.special.url"] = { link = "Normal" },
	["@character"] = { link = "Character" },
	-- ["@character.special"] = { link = "Normal" },
	["@number"] = { link = "Number" },
	["@number.float"] = { link = "Float" },
	["@boolean"] = { link = "Boolean" },

	["@variable"] = { link = "Identfier" },
	-- ["@variable.builtin"] = { link = "Normal" },
	["@variable.parameter"] = { link = "Parameter" },
	-- ["@variable.parameter.builtin"] = { link = "Normal" },
	-- ["@variable.member"] = { link = "Normal" },
	["@function"] = { link = "Function" },
	-- ["@function.builtin"] = { link = "Normal" },
	-- ["@function.call"] = { link = "Normal" },
	-- ["@function.macro"] = { link = "Normal" },
	-- ["@function.method"] = { link = "Normal" },
	-- ["@function.method.call"] = { link = "Normal" },
	["@attribute"] = { link = "Normal" },
	["@attribute.builtin"] = { link = "Normal" },
	["@keyword"] = { link = "Keyword" },
	-- ["@keyword.coroutine"] = { link = "Normal" },
	-- ["@keyword.function"] = { link = "Normal" },
	-- ["@keyword.operator"] = { link = "Normal" },
	-- ["@keyword.import"] = { link = "Normal" },
	-- ["@keyword.type"] = { link = "Normal" },
	-- ["@keyword.modifier"] = { link = "Normal" },
	-- ["@keyword.repeat"] = { link = "Normal" },
	-- ["@keyword.return"] = { link = "Normal" },
	-- ["@keyword.debug"] = { link = "Normal" },
	-- ["@keyword.exception"] = { link = "Normal" },
	-- ["@keyword.conditional"] = { link = "Normal" },
	-- ["@keyword.conditional.ternary"] = { link = "Normal" },
	-- ["@keyword.directive"] = { link = "Normal" },
	-- ["@keyword.directive.define"] = { link = "Normal" },

	["@module"] = { link = "PreProc" },
	-- ["@module.builtin"] = { link = "Normal" },

	["@label"] = { link = "Normal" },

	["@type"] = { link = "Type" },
	-- ["@type.builtin"] = { link = "Type" },
	-- ["@type.definition"] = { link = "Type" },

	["@operator"] = { link = "Operator" },
	["@punctuation"] = { link = "Special" },
	-- ["@punctuation.delimiter"] = { link = "Normal" },
	-- ["@punctuation.bracket"] = { link = "Normal" },
	-- ["@punctuation.special"] = { link = "Normal" },

	["@property"] = { link = "Normal" },
	["@constructor"] = { link = "Normal" },

	["@markup.strong"] = { link = "Bold" },
	["@markup.italic"] = { link = "Italic" },
	-- ["@markup.strikethrough"] = { link = "Normal" },
	["@markup.underline"] = { link = "Underlined" },

	["@markup.heading"] = { link = "Normal" },
	["@markup.heading.1"] = { link = "Normal" },
	["@markup.heading.2"] = { link = "Normal" },
	["@markup.heading.3"] = { link = "Normal" },
	["@markup.heading.4"] = { link = "Normal" },
	["@markup.heading.5"] = { link = "Normal" },
	["@markup.heading.6"] = { link = "Normal" },
	["@markup.quote"] = { link = "Normal" },
	["@markup.math"] = { link = "Normal" },
	["@markup.link"] = { link = "Normal" },
	["@markup.link.label"] = { link = "Normal" },
	["@markup.link.url"] = { link = "Normal" },
	["@markup.raw"] = { link = "Normal" },
	["@markup.raw.block"] = { link = "Normal" },
	["@markup.list"] = { link = "Normal" },
	["@markup.list.checked"] = { link = "Normal" },
	["@markup.list.unchecked"] = { link = "Normal" },

	["@diff.plus"] = { link = "diffAdded" },
	["@diff.minus"] = { link = "diffRemoved" },
	["@diff.delta"] = { link = "diffChanged" },

	["@tag"] = { link = "Tag" },
	-- ["@tag.builtin"] = { link = "Normal" },
	-- ["@tag.attribute"] = { link = "Normal" },
	-- ["@tag.delimiter"] = { link = "Normal" },

	--
	-- Spellcheck
	--

	SpellBad = { sp = c.lorikeet_r_70, underline = true },
	SpellCap = { link = "SpellBad" },
	SpellLocal = { link = "SpellBad" },
	SpellRare = { link = "SpellBad" },

	--
	-- copilot
	--

	CopilotLabel = { fg = c.waterfalls_60 },
	CopilotAnnotation = { link = "CopilotLabel" },
	CopilotSuggestion = { link = "CopilotLabel" },

	--
	-- Indent Blankline
	--

	IblWhitespace = { fg = s.scaffold_dark },
	IblIndent = { link = "IblWhitespace" },
	IblScope = { link = "IblWhitespace" },

	--
	-- Telescope
	--

	TelescopeNormal = { link = "NormalFloat" },
	TelescopeSelection = { fg = c.foilage_70, bg = c.foilage_30 },
	-- TelescopeBorder = { fg = c.border_highlight, bg = c.bg_float },
	-- TelescopeNormal = { fg = c.fg, bg = c.bg_float },
	-- TelescopePromptBorder = { fg = c.orange, bg = c.bg_float },
	-- TelescopePromptTitle = { fg = c.orange, bg = c.bg_float },

	--
	-- Neotree
	--

	-- NeoTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
	-- NeoTreeNormalNC = { fg = c.fg_sidebar, bg = c.bg_sidebar },
	-- NeoTreeDimText = { fg = c.fg_gutter },

	--
	-- GitSigns
	--

	GitSignsAdd = { link = "DiffAdd" },
	GitSignsChange = { link = "DiffChange" },
	GitSignsDelete = { link = "DiffDelete" },
	GitSignsCurrentLineBlame = { fg = s.shadow_text },

	--
	-- diff
	--

	diffAdded = { link = "DiffAdd" },
	diffRemoved = { link = "DiffDelete" },
	diffChanged = { link = "DiffChange" },
	diffOldFile = { fg = c.lorikeet_b_70 },
	diffNewFile = { fg = c.lorikeet_g_70 },

	--
	-- LSP and diagnostics
	--

	DiagnosticError = { fg = s.error },
	DiagnosticWarn = { fg = s.warning },
	DiagnosticInfo = { fg = s.info },
	DiagnosticHint = { fg = s.hint },
	DiagnosticOk = { fg = s.ok },

	DiagnosticFloatingError = { fg = s.error },
	DiagnosticFloatingWarn = { fg = s.warning },
	DiagnosticFloatingInfo = { fg = s.info },
	DiagnosticFloatingHint = { fg = s.hint },
	DiagnosticFloatingOk = { fg = s.ok },

	DiagnosticSignError = { fg = s.error },
	DiagnosticSignWarn = { fg = s.warning },
	DiagnosticSignInfo = { fg = s.info },
	DiagnosticSignHint = { fg = s.hint },

	DiagnosticVirtualTextError = { fg = s.shadow_text },
	DiagnosticVirtualTextWarn = { fg = s.shadow_text },
	DiagnosticVirtualTextInfo = { fg = s.shadow_text },
	DiagnosticVirtualTextHint = { fg = s.shadow_text },

	DiagnosticUnderlineError = { undercurl = true, sp = s.error },
	DiagnosticUnderlineWarn = { undercurl = true, sp = s.warning },
	DiagnosticUnderlineInfo = { undercurl = true, sp = s.info },
	DiagnosticUnderlineHint = { undercurl = true, sp = s.hint },

	--
	-- TODO: Completion / CMP
	--
}
