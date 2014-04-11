--TOP SECRET ONE SIDE

--top secret_oneside_cornerwall

minetest.register_craft({
	output = "castle:top_secret_oneside_dungeonwall 1",
	recipe = {
		{"", "castle:cover_cornerwall", ""},
		{"", "", "castle:cover_cornerwall"},
		{"", "", ""},
	},
})
minetest.register_node("castle:top_secret_oneside_cornerwall",{
	description = "Dungeon Top secret One Side Wall",
	tiles = { 'castle_cornwall.png' },
	drawtype="nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},},
			selection_box={{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},},
	},
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})

--top_secret_oneside_dungeonwall
minetest.register_craft({
	output = "castle:top_secret_oneside_dungeonwall 1",
	recipe = {
		{"", "castle:cover_dungeon", ""},
		{"", "", "castle:cover_dungeon"},
		{"", "", ""},
	},
})
minetest.register_node("castle:top_secret_oneside_dungeonwall",{
	description = "Dungeon Top secret One Side Wall",
	tiles = { 'castle_dungeon_stone.png' },
	drawtype="nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},},
			selection_box={{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},},
	},
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})
--top_secret_oneside_stonewall
minetest.register_craft({
	output = "castle:top_secret_oneside_stonewall 1",
	recipe = {
		{"", "castle:cover_stonewall", ""},
		{"", "", "castle:cover_stonewall"},
		{"", "", ""},
	},
})
minetest.register_node("castle:top_secret_oneside_stonewall",{
	description = "Castle Top secret One Side Wall",
	tiles = { 'castle_stonewall.png' },
	drawtype="nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},},
			selection_box={{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,-0.5,0.4375,0.5,0.5},},
	},
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})

--TOP SECRET ONESIDE ANGLE WALL
--top secret oneside angle dungeonwall
minetest.register_craft({
	output = "castle:top_secret_oneside_angle_dungeonwall 1",
	recipe = {
		{"", "castle:cover_dungeon", ""},
		{"", "castle:top_secret_oneside_dungeonwall", ""},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "castle:top_secret_oneside_angle_dungeonwall 1",
	recipe = {
		{"", "castle:cover_dungeon", "castle:cover_dungeon"},
		{"", "", "castle:cover_dungeon"},
		{"", "", ""},
	},
})
minetest.register_node("castle:top_secret_oneside_angle_dungeonwall",{
	description = "Dungeon Top secret One Side Angle Wall",
	tiles = { 'castle_dungeon_stone.png' },
	drawtype="nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},{0.4375,-0.5,-0.5,0.5,0.5,0.5},},
		selection_box={{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},{0.4375,-0.5,-0.5,0.5,0.5,0.5},},
	},
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})
--top secret oneside angle stonewall
minetest.register_craft({
	output = "castle:top_secret_oneside_angle_stonewall 1",
	recipe = {
		{"", "castle:cover_stonewall", ""},
		{"", "castle:top_secret_oneside_stonewall", ""},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "castle:top_secret_oneside_angle_stonewall 1",
	recipe = {
		{"", "castle:cover_stonewall", "castle:cover_stonewall"},
		{"", "", "castle:cover_stonewall"},
		{"", "", ""},
	},
})
minetest.register_node("castle:top_secret_oneside_angle_stonewall",{
	description = "Castle Top secret One Side Angle Wall",
	tiles = { 'castle_stonewall.png' },
	drawtype="nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},{0.4375,-0.5,-0.5,0.5,0.5,0.5},},
		selection_box={{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},{0.4375,-0.5,-0.5,0.5,0.5,0.5},},
	},
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})

--SECRET WALL
--secret_dungeonwall
minetest.register_craft({
	output = "castle:secret_dungeonwall 1",
	recipe = {
		{"", "", ""},
		{"castle:cover_dungeon", "", "castle:cover_dungeon"},
		{"", "", ""},
	},
})
minetest.register_node("castle:secret_dungeonwall",{
	description = "Dungeon secret Wall",
	tiles = { 'castle_dungeon_stone.png' },
	drawtype= "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5}},
		selection_box={
			type="fixed",{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5}},
	},
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})
--secret_stonewall
minetest.register_craft({
	output = "castle:secret_stonewall 1",
	recipe = {
		{"", "", ""},
		{"castle:cover_stonewall", "", "castle:cover_stonewall"},
		{"", "", ""},
	},
})
minetest.register_node("castle:secret_stonewall",{
	description = "Castle secret Wall",
	tiles = { 'castle_stonewall.png' },
	drawtype= "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5}},
		selection_box={
			type="fixed",{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5}},
	},
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})

--TOP SECRET WALL
--top_secret_dungeonwall
minetest.register_craft({
	output = "castle:top_secret_dungeonwall 1",
	recipe = {
		{"", "castle:cover_dungeon", ""},
		{"", "castle:secret_dungeonwall", ""},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "castle:top_secret_dungeonwall 1",
	recipe = {
		{"", "castle:cover_dungeon", ""},
		{"castle:cover_dungeon", "", "castle:cover_dungeon"},
		{"", "", ""},
	},
})
minetest.register_node("castle:top_secret_dungeonwall",{
	description = "Dungeon Top secret Wall",
	tiles = { 'castle_dungeon_stone.png' },
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,-0.5,0.4375,0.5,0.5},},
		selection_box={
			type="fixed",{-0.5,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,-0.5,0.4375,0.5,0.5},},
	},
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})
--top_secret_stonewall
minetest.register_craft({
	output = "castle:top_secret_stonewall 1",
	recipe = {
		{"", "castle:cover_stonewall", ""},
		{"", "castle:secret_stonewall", ""},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "castle:top_secret_stonewall 1",
	recipe = {
		{"", "castle:cover_stonewall", ""},
		{"castle:cover_stonewall", "", "castle:cover_stonewall"},
		{"", "", ""},
	},
})
minetest.register_node("castle:top_secret_stonewall",{
	description = "Castle Top secret Wall",
	tiles = { 'castle_stonewall.png' },
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,-0.5,0.4375,0.5,0.5},},
		selection_box={
			type="fixed",{-0.5,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,-0.5,0.4375,0.5,0.5},},
	},
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})
