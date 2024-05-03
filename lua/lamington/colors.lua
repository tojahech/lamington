local colors = {}

colors.named_colors = {
	canopy_20 = "#5d6f44",
	canopy_40 = "#839b5f",
	canopy_60 = "#b2c29b",
	canopy_80 = "#c6d1b5",

	shadow_10 = "#1e1c1b",
	shadow_20 = "#211e1d",
	shadow_30 = "#2e2b29",
	shadow_40 = "#3f3734",

	foilage_30 = "#456d2d",
	foilage_50 = "#6aa744",
	foilage_70 = "#82bd5e",

	soil_10 = "#211a10",
	soil_30 = "#463724",
	soil_50 = "#725a3b",
	soil_70 = "#a07f53",
	soil_90 = "#c0a886",

	waterfalls_40 = "#5e8990",
	waterfalls_60 = "#83a6b9",
	waterfalls_70 = "#b9cad6",
	waterfalls_90 = "#dae4ed",

	sunray_60 = "#ddc669",
	sunray_80 = "#e9ddaf",

	lorikeet_g_50 = "#45af38",
	lorikeet_g_70 = "#6bcc5f",
	lorikeet_b_50 = "#3c31e1",
	lorikeet_b_70 = "#695fff",
	lorikeet_r_50 = "#e42823",
	lorikeet_r_70 = "#f35c58",
	lorikeet_o_50 = "#f6c43f",
	lorikeet_o_70 = "#f7cc58",
	lorikeet_y_50 = "#fef435",
	lorikeet_y_70 = "#fef769",
}

local c = colors.named_colors

colors.semantic_colors = {

	-- main text and background
	bg = c.shadow_10,
	fg = c.canopy_60,

	-- modified text and background for modal-like elements
	bg_modal = c.shadow_30,
	fg_modal = c.canopy_40,

	-- modified text and background for selected or focused elements
	bg_selection = c.foilage_30,
	fg_selection = c.foilage_70,

	-- highlight elements that should stand out, in rough order of visual weight
	highlight_1 = c.waterfalls_60,
	highlight_2 = c.canopy_40,
	highlight_3 = c.sunray_60,
	highlight_4 = c.foilage_70,

	-- elements that should fade into the background (in the context of the main fg/bg)
	fade_1 = c.soil_50,
	fade_2 = c.soil_50,
	fade_3 = c.soil_50,

	-- visual scaffolding like borders, dividers, etc.
	scaffold = c.soil_70,
	scaffold_dark = c.soil_50,

	-- colors to indicate status
	ok = c.lorikeet_g_70,
	error = c.lorikeet_r_70,
	warning = c.lorikeet_o_70,
	info = c.lorikeet_y_70,
	hint = c.lorikeet_b_70,

	-- colors to indicate change
	plus = c.lorikeet_g_50,
	minus = c.lorikeet_r_50,
	diff = c.lorikeet_y_50,
}

return colors
