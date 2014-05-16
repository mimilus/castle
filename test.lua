minetest.register_abm({
	nodenames = {"castle:a_test"},
	interval = 30,
	chance = 1,
	action = function(pos)
		minetest.add_node(pos, {name="default:wood"})
	end,
})
