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

	-- primary text and background
	bg = c.shadow_20,
	fg = c.canopy_40,

	-- secondary text and background, used for surrounding elements like menus, sidebars, panels, etc
	bg_alt = c.shadow_10,
	fg_alt = c.canopy_20,

	-- alternative text and background, used for floating elements like pop-ups, dialogues and modals
	bg_modal = c.shadow_30,
	fg_modal = c.canopy_40,

	-- alternative text and background, used for selected or focused elements
	bg_selection = c.canopy_60,
	fg_selection = c.canopy_20,

	-- highlight elements and text that should stand out
	highlight_1 = c.canopy_60,
	highlight_2 = c.waterfalls_60,
	highlight_3 = c.sunray_60,
	highlight_4 = c.foilage_50,

	-- de-emphasise elements and text that should fade into the background
	fade_1 = c.canopy_20,
	fade_2 = c.soil_50,
	fade_3 = c.waterfalls_60,

	-- visual scaffolding like borders, dividers, etc.
	scaffold = c.soil_70,
	scaffold_dark = c.soil_50,
	scaffold_3 = c.shadow_30,

	-- status indicators
	ok = c.lorikeet_g_70,
	error = c.lorikeet_r_70,
	warning = c.lorikeet_o_70,
	info = c.lorikeet_y_70,
	hint = c.lorikeet_b_70,

	-- change indicators
	plus = c.lorikeet_g_50,
	minus = c.lorikeet_r_50,
	diff = c.lorikeet_y_50,
	same = c.lorikeet_b_70,
}

return colors
