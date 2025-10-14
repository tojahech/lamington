local c = require("lamington.colors").named_colors
local s = require("lamington.colors").semantic_colors

return {

	--
	-- Text
	--

	Normal = { fg = s.foreground, bg = s.background }, -- Normal text
	NormalNC = { bg = s.panel_background }, -- Normal text in inactive windows
	Title = { fg = s.panel_foreground }, -- Titles for things like the help window, autocomplete box, etc.
	Underlined = { underline = true }, -- Meta, underlined text
	Bold = { bold = true }, -- Meta, bold text
	Italic = { italic = true }, -- Meta, italic text
	NonText = { fg = s.foreground_faded_1 }, -- Characters that don't really exist like soft linebreaks
	Conceal = { fg = s.foreground_faded_2 }, -- Placeholder characters substituted for concealed text

	--
	-- Selections
	--

	Cursor = { fg = s.foreground_selection, bg = s.background_selection }, -- Highlights current cursor position
	MatchParen = { link = "Cursor" }, -- Parenthesis matching the one under the cursor

	Search = { fg = s.foreground_selection, bg = s.background_selection }, -- Last search pattern
	IncSearch = { link = "Search" }, -- Search pattern as you type
	Substitute = { link = "Search" }, -- Highlight for :s///c

	--
	-- Structures
	--

	Visual = { fg = s.foreground_selection, bg = s.background_selection }, -- Visual mode selection

	VertSplit = { fg = s.scaffold_2 }, -- Separator between vertical splits
	WinSeparator = { fg = s.scaffold_2 }, -- Separator between horizontal splits

	LineNr = { fg = s.scaffold_2 }, -- Line number column
	SignColumn = { link = "LineNr" }, -- Column where signs are displayed
	EndOfBuffer = { fg = "NONE", bg = "NONE" }, -- ~ lines at the end of a buffer
	ColorColumn = { link = "LineNr" }, -- color for columns highlighted with cc

	Folded = { fg = s.panel_foreground, bg = s.panel_background }, -- Line color for collapsed folds
	FoldColumn = { fg = s.panel_foreground, bg = s.panel_background }, -- Column in the sign column used for fold markers

	--
	-- Interface
	--

	StatusLine = { fg = s.panel_foreground, bg = s.panel_background }, -- Status line of current window
	StatusLineNC = { fg = s.panel_foreground, bg = s.panel_background }, -- Status line of non-current windows

	TabLine = { fg = c.canopy_40, bg = c.shadow_30 }, -- Tab line, inactive tabs
	TabLineFill = { fg = c.canopy_40, bg = c.shadow_30 }, -- Tab line, empty space
	TabLineSel = { fg = c.canopy_40, bg = c.shadow_30 }, -- Tab line, active tab

	NormalFloat = { fg = s.modal_foreground, bg = s.modal_background }, -- Normal text in floating windows
	FloatBorder = { fg = s.scaffold_3 }, -- Border of floating windows
	FloatTitle = { fg = s.foreground_selection }, -- Title of floating windows
	FloatFooter = { fg = s.foreground_selection }, -- Footer of floating windows

	Pmenu = { fg = s.modal_foreground, bg = s.modal_background }, -- popup menu normal item
	PmenuSel = { fg = s.foreground_selection, bg = s.background_selection }, -- popup menu selected item
	PmenuSbar = { bg = s.modal_background }, -- popup menu scrollbar
	PmenuThumb = { bg = s.background_selection }, -- Current location indicator in popup menus

	QuickFixLine = { fg = s.foreground_selection, bg = s.background_selection }, -- Current line in the quickfix window
	Question = { fg = c.lorikeet_b_70 }, -- prompts and yes/no questions
	Directory = { fg = s.panel_foreground, bg = s.panel_background }, -- Directory names

	--
	-- Status and messages
	--

	Todo = { fg = s.hint },
	Error = { fg = s.error },
	Warning = { fg = s.warning },
	Info = { fg = s.info },
	Debug = { fg = s.hint },

	OkText = { fg = s.ok },
	ErrorText = { fg = s.erro },
	WarningText = { fg = s.warning },
	InfoText = { fg = s.info },
	HintText = { fg = s.hint },

	ErrorMsg = { link = "Error" }, -- Error messages on the command line
	WarningMsg = { link = "Warning" },
	ModeMsg = { link = "Info" }, -- Message for -- INSERT -- and similar

	DiffAdd = { fg = s.add },
	DiffChange = { fg = s.diff },
	DiffDelete = { fg = s.minus },

	--
	-- Syntax highlighting
	--

	Comment = { fg = s.foreground_faded_1, italic = true },
	SpecialComment = { bold = true },
	-- Whitespace = {},

	Constant = { link = "Normal" },
	String = { fg = s.foreground_highlighted_1 },
	Character = { fg = s.foreground_highlighted_1 },
	Number = { fg = s.foreground_highlighted_1 },
	Float = { fg = s.foreground_highlighted_1 },
	Boolean = { fg = s.foreground_highlighted_1 },

	Identifier = { link = "Normal" },
	Parameter = { fg = s.foreground, italic = true },

	Function = { fg = s.foreground, bold = true },

	Keyword = { fg = s.foreground_highlighted_4, bold = true },
	Conditional = { link = "Keyword" },
	Repeat = { link = "Keyword" },
	Label = { link = "Keyword" },
	Statement = { link = "Keyword" },
	Exception = { link = "Keyword" },
	Operator = { fg = s.foreground_highlighted_4 },

	PreProc = { fg = s.foreground_highlighted_4 },
	-- Include = { fg = c["re"], bg = "NONE" },
	-- Define = { fg = c["ma"], bg = "NONE" },
	-- Macro = { fg = c["ma"], bg = "NONE" },
	-- PreCondit = { fg = c["ma"], bg = "NONE" },

	Type = { fg = s.foreground_highlighted_1, bold = true },
	Typedef = { link = "Type" },
	Structure = { fg = s.foreground_highlighted_3 },

	Special = { fg = s.highlight_4 },
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
	-- ["@function.call"] = { link = "Normal" },
	-- ["@function.builtin"] = { link = "Normal" },
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

	-- ["@markup.strong"] = { link = "Bold" },
	-- ["@markup.italic"] = { link = "Italic" },
	-- ["@markup.strikethrough"] = { link = "Normal" },
	-- ["@markup.underline"] = { link = "Underlined" },

	["@markup.heading"] = { fg = s.foreground_highlighted_2 },
	-- ["@markup.heading.1"] = { link = "Normal" },
	-- ["@markup.heading.2"] = { link = "Normal" },
	-- ["@markup.heading.3"] = { link = "Normal" },
	-- ["@markup.heading.4"] = { link = "Normal" },
	-- ["@markup.heading.5"] = { link = "Normal" },
	-- ["@markup.heading.6"] = { link = "Normal" },
	["@markup.quote"] = { link = "Normal" },
	["@markup.math"] = { link = "Normal" },

	["@markup.link"] = { fg = s.foreground_highlighted_4 },
	-- ["@markup.link.label"] = { fg = s.highlight_4 },
	-- ["@markup.link.url"] = { fg = s.highlight_4 },

	["@markup.raw"] = { fg = s.foreground_highlighted_3 },
	["@markup.raw.block"] = { link = "Normal" },

	["@markup.list"] = { link = "Normal" },
	-- ["@markup.list.checked"] = { link = "Normal" },
	-- ["@markup.list.unchecked"] = { link = "Normal" },

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

	SpellBad = { sp = s.error, underline = true },
	SpellCap = { link = "SpellBad" },
	SpellLocal = { link = "SpellBad" },
	SpellRare = { link = "SpellBad" },

	--
	-- copilot
	--

	CopilotLabel = { fg = s.foreground_faded_3 },
	CopilotAnnotation = { link = "CopilotLabel" },
	CopilotSuggestion = { link = "CopilotLabel" },

	--
	-- Indent Blankline
	--

	IblWhitespace = { fg = s.scaffold_1 },
	IblIndent = { link = "IblWhitespace" },
	IblScope = { link = "IblWhitespace" },

	--
	-- Telescope
	--

	TelescopeNormal = { link = "NormalFloat" },
	TelescopeSelection = { fg = s.foreground_selection, bg = s.background_selection },
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
	GitSignsCurrentLineBlame = { fg = s.foreground_faded_2 },

	--
	-- diff
	--

	diffAdded = { link = "DiffAdd" },
	diffRemoved = { link = "DiffDelete" },
	diffChanged = { link = "DiffChange" },
	diffOldFile = { fg = s.diff },
	diffNewFile = { fg = s.same },

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

	DiagnosticVirtualTextError = { fg = s.foreground_faded_1 },
	DiagnosticVirtualTextWarn = { fg = s.foreground_faded_1 },
	DiagnosticVirtualTextInfo = { fg = s.foreground_faded_1 },
	DiagnosticVirtualTextHint = { fg = s.foreground_faded_1 },

	DiagnosticUnderlineError = { undercurl = true, sp = s.error },
	DiagnosticUnderlineWarn = { undercurl = true, sp = s.warning },
	DiagnosticUnderlineInfo = { undercurl = true, sp = s.info },
	DiagnosticUnderlineHint = { undercurl = true, sp = s.hint },

	--
	-- TODO: Completion / CMP
	--
}
