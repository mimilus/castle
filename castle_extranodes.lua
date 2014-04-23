minetest.register_node("castle:desert_cobble", {
	description = "Desert Cobble",
	drawtype = "normal",
	tiles = {"desert_cobble.png"},
	paramtype = light,
	drop = "castle:desert_cobble",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("castle:colored_brick", {
	description = "Colored Brick Wall",
	drawtype = "normal",
	tiles = {"color_brick.png"},
	paramtype = light,
	drop = "castle:colored_brick",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
