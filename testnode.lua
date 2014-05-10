----------------------------TEST
minetest.register_node("castle:a_test", {
	drawtype = "drawbox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "TEST NODE",
	tiles = { "up.png", "down.png", "1.png", "2.png", "3.png", "4.png" },
	groups = {cracky=3},
})
