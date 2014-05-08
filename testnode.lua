----------------------------TEST
minetest.register_node("castle:" ..name.. "_cornerstairs_top_test", {
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "TEST " ..desc.. " Corner Stairs",
	tiles = { "1.png", "2.png", "3.png", "4.png", "5.png", "6.png" },
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0,0.5}, --NodeBox1
			{0,0,0,0.5,0.5,0.5}, --NodeBox2
			{-0.5,0,-0.5,0,0.5,0.5},
			}
	},
	groups = {cracky=3},
	sounds = thesound ,
})
