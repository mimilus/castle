local mud = {}

mud.types = {
		{"_mud",					" Mud",								"castle_cover_inv_mud.png",				"default:water_flowing",				"castle_mud_flowing_animated.png",				0.8},
		{"_mud2",					" Mud 2",							"castle_cover_inv_mud1.png",			"default:water_flowing",				"castle_mud_flowing_animated1.png",				0.8},
--		{"_mud_dirt",				" Mud Dirt",						"castle_cover_inv_dirt_mud.png",		"default:water_flowing",				"castle_dirtmud_flowing_animated.png",			0.8},
--		{"_mud_dirt_2",				" Mud Dirt 2",						"castle_cover_inv_dirt_mud2.png",		"default:water_flowing",				"castle_dirtmud_flowing_animated2.png",			0.8},

}

--Standart fountain

for _, row in ipairs(mud.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local craft_logical = row[4]
	local animtile = row [5]
	local speed = row [6]

--Cube Node
minetest.register_node("castle:" ..name, {
	description = desc,
	drawtype = "nodebox",
	    walkable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.5,0.5},
		},
	},
		tiles = {
		{image=animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=speed}
		},
			},
	alpha = WATER_ALPHA,
--	inventory_image = inv ,
--	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
	groups = {cracky=3,attached_node=0},
	sounds = default.node_sound_stone_defaults(),
})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name,
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end





end
