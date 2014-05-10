----------------------------------
---------------Animated Covers
---------------------------------

local castle_coveranim = {}

castle_coveranim.types = {
		{"bubble",					" Bubble",							"bubble.png",							"",								"castle_animated_bubble.png",					2},
		{"bubbletop",				" Bubble Top",						"castle_animated_bubble_top_inv.png",	"",								"castle_animated_bubble_top.png",				4},
		{"leaves",					" Leaves",							"default_leaves.png",					"default:default_leaves",		"castle_animated_default_leaves.png",			7},
		{"leaves2",					" Leaves 2",						"castle_default_leaves2.png",			"castle:coverleaves",			"castle_animated_default_leaves2.png",			7},
		{"_water_transparent2",		" Transparent  Water Cover 2",		"castle_water_flowing_inv.png",			"default:water_flowing",		"castle_water_flowing_animated2.png",			0.8},
		{"_water_transparent1",		" Transparent  Water Cover 1",		"castle_water_flowing1_inv.png",		"default:water_flowing",		"castle_water_flowing_animated1.png",			0.8},
		{"_water_transparent",		" Transparent  Water Cover ",		"castle_water_flowing2_inv.png",		"default:water_flowing",		"castle_water_flowing_animated.png",			0.8},
		{"_mud",					" Mud Cover",						"castle_cover_inv_mud.png",				"default:water_flowing",		"castle_mud_flowing_animated.png",				0.8},
		{"_mud2",					" Mud Cover 2",						"castle_cover_inv_mud1.png",			"default:water_flowing",		"castle_mud_flowing_animated1.png",				0.8},
--		{"_mud_dirt",				" Mud Dirt Cover",					"castle_cover_inv_dirt_mud.png",		"default:water_flowing",		"castle_dirtmud_flowing_animated.png",			0.8},
--		{"_mud_dirt_2",				" Mud Dirt Cover 2",				"castle_cover_inv_dirt_mud2.png",		"default:water_flowing",		"castle_dirtmud_flowing_animated2.png",			0.8},
}

for _, row in ipairs(castle_coveranim.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local craft_logical = row[4]
	local animtile = row [5]
	local speed = row [6]

minetest.register_node("castle:cover" ..name , {
	description = "Cover" ..desc,
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
	inventory_image = inv ,
	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
   	groups = {choppy=2,dig_immediate=1},
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    walkable = false,
--    selection_box={
--       type="fixed",
--        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
--    },

--	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "castle:cover_" ..name.. " 8",
	recipe = {
		{"castle:saw", craft_logical ,""},
		{"", "", ""},
		{"", "", ""}
	},
})

end
