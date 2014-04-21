--STONEWALL

minetest.register_craft({
	output = "castle:stonewall",
	recipe = {
		{"default:cobble"},
		{"default:desert_stone"},
	}
})
minetest.register_node("castle:stonewall", {
	description = "Castle Wall",
	drawtype = "normal",
	tiles = {"castle_stonewall.png"},
	paramtype = light,
	drop = "castle:stonewall",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "castle:stonewall_corner",
	recipe = {
		{"", "castle:stonewall"},
		{"castle:stonewall", "default:sandstone"},
	}
})
minetest.register_node("castle:stonewall_corner", {
	drawtype = "normal",
	paramtype = light,
	paramtype2 = "facedir",
	description = "Castle Corner",
	tiles = {"castle_stonewall.png", 
			"castle_stonewall.png",
			"castle_corner_stonewall1.png", 
			"castle_stonewall.png", 
			"castle_stonewall.png", 
			"castle_corner_stonewall2.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})


--CORNERWALL

minetest.register_craft({
	output = "castle:cornerwall",
	recipe = {
		{"default:sandstone", "default:sandstonebrick"},
		{"default:sandstone", "default:sandstone"},
	}
})
minetest.register_node("castle:cornerwall", {
	drawtype = "normal",
	paramtype = light,
	paramtype2 = "facedir",
	description = "Castle CornerWall",
	tiles = {"castle_cornwall.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})




--PAVEMENT



--RUBBLE
minetest.register_craft({
	output = "castle:rubblerubble",
	recipe = {
		{"castle:rubble"},
	}
})
minetest.register_node("castle:rubblerubble",{
	drawtype="nodebox",
	description = "Rubble Castel Rubble",
	paramtype = "light",
		tiles = {"castle_rubble.png"},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.15625,-0.5,-0.375,0.28125,-0.125,0},
			{0.03125,-0.5,-0.25,0.46875,-0.125,0.125},
			{-0.375,-0.5,-0.0625,0,-0.125,0.3125},
			{-0.5,-0.5,-0.5,-0.125,-0.125,-0.125},
			{0,-0.3125,-0.25,0.3125,0.0625,0.125},
			{-0.125,-0.46875,-0.203125,0.125,0.21875,0.078125},
			{0.15625,-0.0625,-0.1875,0.34375,0.1875,0.0625},
			{0.15625,-0.5,-0.34375,0.34375,-0.3125,-0.15625},
			{-0.21875,-0.5,-0.4375,-0.03125,0.0625,-0.1875},
			{-0.46875,-0.5,0.21875,-0.28125,-0.3125,0.40625},
			{0.21875,-0.21875,-0.28125,0.40625,-0.03125,-0.09375},
		},
		selection_box={
			{-0.15625,-0.5,-0.375,0.28125,-0.125,0},
			{0.03125,-0.5,-0.25,0.46875,-0.125,0.125},
			{-0.375,-0.5,-0.0625,0,-0.125,0.3125},
			{-0.5,-0.5,-0.5,-0.125,-0.125,-0.125},
			{0,-0.3125,-0.25,0.3125,0.0625,0.125},
			{-0.125,-0.46875,-0.203125,0.125,0.21875,0.078125},
			{0.15625,-0.0625,-0.1875,0.34375,0.1875,0.0625},
			{0.15625,-0.5,-0.34375,0.34375,-0.3125,-0.15625},
			{-0.21875,-0.5,-0.4375,-0.03125,0.0625,-0.1875},
			{-0.46875,-0.5,0.21875,-0.28125,-0.3125,0.40625},
			{0.21875,-0.21875,-0.28125,0.40625,-0.03125,-0.09375},
		},},
	groups = {crumbly=3,falling_node=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
		}),
	})

minetest.register_craft({
	output = "castle:rubble",
	recipe = {
		{"castle:stonewall"},
	}
})
minetest.register_craft({
	output = "castle:rubble 2",
	recipe = {
		{"default:gravel"},
		{"default:desert_stone"},
	}
})
minetest.register_node("castle:rubble", {
	description = "Castle Rubble",
	drawtype = "normal",
	tiles = {"castle_rubble.png"},
	paramtype = light,
	groups = {crumbly=3,falling_node=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
		}),
})



