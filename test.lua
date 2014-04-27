-- GENERATED CODE
-- Node Box Editor, version 0.6.2 - Stone-modified
-- Namespace: test

minetest.register_node("castle:TESTooo",{
	drawtype="nodebox",
		description = "ROUNDED WALL",
	paramtype = "light",
		paramtype2 = "facedir",
		tiles = {"castle_cornwall.png"},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.375,0.5,0.5}, --NodeBox1
			{-0.375,-0.3125,-0.5,-0.25,0.5,0.5}, --NodeBox2
			{-0.25,-0.125,-0.5,-0.125,0.5,0.5}, --NodeBox3
			{-0.125,0.0625,-0.5,0,0.5,0.5}, --NodeBox4
			{0,0.1875,-0.5,0.125,0.5,0.5}, --NodeBox5
			{0.125,0.25,-0.5,0.25,0.5,0.5}, --NodeBox6
			{0.25,0.3125,-0.5,0.375,0.5,0.5}, --NodeBox7
			{0.375,0.375,-0.5,0.5,0.5,0.5}, --NodeBox8
	},
	}

})

minetest.register_craft({
	output = "castle:TESTooo",
	recipe = {
		{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
		{"","default:steel_ingot", ""},
		{"default:steel_ingot", "default:steel_ingot","default:steel_ingot"},
	}
})
