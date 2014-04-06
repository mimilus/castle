
--top_secret_oneside_angle_dungeonwall

minetest.register_craft({
	output = "castle:top_secret_oneside_angle_dungeonwall 1",
	recipe = {
		{"", "castle:cover_dungeonwall", ""},
		{"", "castle:top_secret_oneside_dungeonwall", ""},
		{"", "", ""},
	},
})

minetest.register_craft({
	output = "castle:top_secret_oneside_angle_dungeonwall 1",
	recipe = {
		{"", "castle:cover_dungeonwall", "castle:cover_dungeonwall"},
		{"", "", "castle:cover_dungeonwall"},
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
})
--top_secret_oneside_dungeonwall

minetest.register_craft({
	output = "castle:top_secret_oneside_dungeonwall 1",
	recipe = {
		{"", "castle:cover_stonewall", ""},
		{"", "", "castle:cover_stonewall"},
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
			selection_box={{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,-0.5,0.4375,0.5,0.5},},
	},
	groups = {choppy=2,dig_immediate=2},
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
	description = "Stonewall secret Wall",
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
	description = "Stonewall Top secret Wall",
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
})


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
})

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
})


