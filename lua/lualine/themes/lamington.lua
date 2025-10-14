local c = require("lamington.colors").named_colors
local s = require("lamington.colors").semantic_colors

local lamington = {}

-- Note: only defining the base lualine theme, choosing not to change the highlights based on mode.
lamington.normal = {
	a = { bg = c.canopy_60, fg = c.shadow_20 },
	b = { bg = s.modal_background, fg = c.waterfalls_60 },
	c = { bg = s.modal_background, fg = s.modal_foreground },
}

return lamington
