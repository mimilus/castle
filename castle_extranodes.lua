minetest.register_node("castle:desert_cobble", {
	description = "Desert Cobble",
	drawtype = "normal",
	tiles = {"desert_cobble.png"},
	paramtype = light,
	drop = "castle:desert_cobble",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

