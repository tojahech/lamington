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

-- Dulux paint swatches from my house!
colors.maurice = {
	whisper_white = "#ebe9e0",

	marais = "#403d41",
	teahouse = "#666966",
	dieskau = "#cbc9c5",

	double_bass = "#3c3538",
	meercat = "#514439",
	white_duck = "#cfcabb",

	equatorial_forest = "#71845e",
	lady_fern = "#90a073",
	garden_pond = "#afc09d",

	wishard = "#527769",
	silent_sage = "#729986",
	diorite = "#9cbfaf",

	angry_ocean = "#4e6563",
	classic_calm = "#6a8783",
	duck_egg_blue = "#97b2b0",

	alpha_centuri = "#4d5878",
	quantum_blue = "#6d7a9b",
	grey_flannel = "#98a5c2",

	baltic = "#39505f",
	oceanic = "#4f6f81",
	post_boy = "#7a9bad",

	berry_smoothie = "#885362",
	never_forget = "#a67284",
	strawberry_mousse = "#c69eaf",

	cinnamon_sand = "#b77e53",
	raw_umber = "#cc996a",
	lama = "#dfb995",

	terracotta_chip = "#c4795d",
	italian_clay = "#d69579",
	diva_rouge = "#e7b7a4",

	splendid_coral = "#c9706a",
	coral_atoll = "#dc8f8d",
	pretty_pink = "#eab2b3",

	camellia = "#a85c60",
	pleasure = "#c17c83",
	prom = "#d9a5ac",
}

local c = colors.named_colors

colors.semantic_colors = {

	--
	-- main content areas
	--

	background = c.shadow_20,
	background_selection = c.canopy_60,

	foreground = c.canopy_60,
	foreground_selection = c.canopy_20,

	foreground_highlighted_1 = c.canopy_40,
	foreground_highlighted_2 = c.waterfalls_60,
	foreground_highlighted_3 = c.foilage_50,
	foreground_highlighted_4 = c.sunray_60,
	foreground_highlighted_5 = c.lorikeet_r_70,

	foreground_faded_1 = c.canopy_20,
	foreground_faded_2 = c.soil_50,
	foreground_faded_3 = c.soil_70,

	--
	-- menus, sidebars, panels, etc
	--

	panel_background = c.shadow_10,
	panel_foreground = c.canopy_20,

	--
	-- pop-ups, dialogues, modals, etc
	--

	modal_background = c.shadow_30,
	modal_foreground = c.canopy_40,

	--
	-- visual scaffolding
	--

	-- borders, dividers, etc
	scaffold_1 = c.soil_50,
	scaffold_2 = c.soil_70,
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

local m = colors.maurice

colors.maurice_semantic_colors = {

	--
	-- main content areas
	--

	background = m.whisper_white,
	background_selection = m.whisper_white,

	foreground = m.double_bass,
	foreground_selection = m.meercat,

	foreground_highlighted_1 = m.lady_fern,
	foreground_highlighted_2 = m.raw_umber,
	foreground_highlighted_3 = m.alpha_centuri,
	foreground_highlighted_4 = m.silent_sage,
	foreground_highlighted_5 = m.never_forget,

	foreground_faded_1 = m.grey_flannel,
	foreground_faded_2 = m.lama,
	foreground_faded_3 = m.dieskau,

	--
	-- menus, sidebars, panels, etc
	--

	panel_background = m.dieskau,
	panel_foreground = m.marais,

	--
	-- pop-ups, dialogues, modals, etc
	--

	modal_background = m.garden_pond,
	modal_foreground = m.equatorial_forest,

	--
	-- visual scaffolding
	--

	-- borders, dividers, etc
	scaffold_1 = m.baltic,
	scaffold_2 = m.oceanic,
	scaffold_3 = m.post_boy,

	-- status indicators
	ok = m.diorite,
	error = m.splendid_coral,
	warning = m.strawberry_mousse,
	info = m.cinnamon_sand,
	hint = m.garden_pond,

	-- change indicators
	plus = m.diorite,
	minus = m.splendid_coral,
	diff = m.strawberry_mousse,
	same = m.cinnamon_sand,
}
return colors
