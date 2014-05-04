local castle_cover = {}

castle_cover.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
	{"dirt","Dirt","default_dirt.png","default:dirt"},
	{"stone","Stone","default_stone.png","default:stone"},
	{"cobble","Cobble","default_cobble.png","default:cobble"},
	{"sand","Sand","default_sand.png","default:sand"},
	{"desert_sand","Desert Sand","default_desert_sand.png","default:desert_sand"},
	{"desert_stone","Desert Stone","default_desert_stone.png","default:desert-stone"},
	{"brick","Brick","default_brick.png","default:brick"},
	{"coloredbrick","Colored Brick","color_brick.png","castle:colored_brick"},
	{"steel","Steel","default_steel_block.png","default:steelblock"},
	{"glass","Glass","default_glass.png","default:glass"},
	{"stonebrick","Stone Brick","default_stone_brick.png","default:stonebrick"},
	{"desert_stone_brick","Desert Stone Brick","default_desert_stone_brick.png","default:desertstonebrick"},
	{"sand_stone_brick","Sand Stone Brick","default_sandstone_brick.png","default:sandstonebrick"},
	{"tree","Tree","default_tree.png","default:tree"},
	{"wood","Wood","default_wood.png","default:wood"},
	{"sand_stone","Sand Stone","default_sandstone.png","default:sandstone"},
	{"obsidian","Obsidian","default_obsidian.png","default:obsidian"},
	{"gravel","Gravel","default_gravel.png","default:gravel"},
	{"pavingstone","Paving Stone","castle_pavement_brick.png","castle:pavement"},
	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
	{"shingles_asphalt",		"Shingles Asphalt",			"shingles_asphalt.png",			"castle:shingles_asphalt"},
	{"shingles_terracotta",		"Shingles Terracotta",		"shingles_terracotta.png",		"castle:shingles_terracotta"},
	{"shingles_wood",			"Shingles Wood",			"shingles_wood.png",			"castle:shingles_wood"},
		{"castle_straw_bale","Straw Bale","castle_straw_bale.png","castle:straw_bale"},
		{"castle_straw_bale_reinforced","Straw Bale Reinforced","castle_secret_door_straw_bale_top.png","castle:straw_bale_reinforced"},

--		{"leaves","Desert Leaves","default_leaves.png","default:default_leaves"},
}

for _, row in ipairs(castle_cover.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local craft_logical = row[4]

-- Cover Definition

minetest.register_node("castle:cover_" ..name, {
	description = desc.. " Cover ",
	inventory_image = inv ,
	tiles = { inv },
    drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "castle:cover_" ..name.. "8",
	recipe = {
		{"castle:saw", craft_logical ,""},
		{"", "", ""},
		{"", "", ""}
	},
})
end



------------------Saw
minetest.register_craftitem("castle:saw", {
	description = "Handsaw",
	tiles = { 'coversaw.png' },
	inventory_image = 'coversaw.png',
})

minetest.register_craftitem("castle:sawhandle", {
	description = "Saw Handle",
	tiles = { 'sawhandle.png' },
	inventory_image = 'sawhandle.png',
})

minetest.register_craftitem("castle:sawblade", {
	description = "Saw Blade",
	tiles = { 'sawblade.png' },
	inventory_image = 'sawblade.png',
})

minetest.register_craft({
	output = "castle:sawhandle",
	recipe = {
		{"default:stick", "default:stick", "default:stick"},
		{"default:stick", "", ""},
		{"", "", ""},
	},
})

minetest.register_craft({
	output = "castle:sawblade",
	recipe = {
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:stick", "default:stick", "default:stick"},
		{"", "", ""},
	},
})

minetest.register_craft({
	output = "castle:saw",
	recipe = {
		{"castle:sawhandle", "castle:sawblade", ""},
		{"", "", ""},
		{"", "", ""},
	},
})



----------------Cover Leaves
minetest.register_node("castle:cover_leaves", {
	description = "Leaves Cover",
	tiles = { 
		{image = "animated_default_leaves.png",
		backface_culling = false,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=8.0}
		},
			},
	inventory_image = "default_leaves.png" ,
	wield_image = "default_leaves.png",
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    walkable = false,
--    selection_box={
--       type="fixed",
--        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
--    },
	groups = {choppy=2,dig_immediate=1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "castle:cover_leaves 8",
	recipe = {
		{"castle:saw", "default:leaves" ,""},
		{"", "", ""},
		{"", "", ""}
	},
})

--Cover Water
minetest.register_node("castle:cover_water", {
	description = "Water Cover",
	tiles = {
		{image="castle_water_flowing_animated.png",
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = "default_water.png" ,
	wield_image = "default_water.png",
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    walkable = false,
--    selection_box={
--       type="fixed",
--        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
--    },
	groups = {choppy=2,dig_immediate=1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("castle:cover_water_opaque2i", {
	description = "Water Cover Opaque 2",
	tiles = {
		{image="castle_water_flowing_animated2.png",
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = "default_water.png" ,
	wield_image = "default_water.png",
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    walkable = false,
--    selection_box={
--       type="fixed",
--        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
--    },
	groups = {choppy=2,dig_immediate=1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("castle:cover_water_opaque1", {
	description = "Water Cover Opaque 1",
	tiles = {
		{image="castle_water_flowing_animated1.png",
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = "default_water.png" ,
	wield_image = "default_water.png",
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    walkable = false,
--    selection_box={
--       type="fixed",
--        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
--    },
	groups = {choppy=2,dig_immediate=1},
--	sounds = default.node_sound_stone_defaults(),
})

---- Opaque water wall

--Cover Water
minetest.register_node("castle:cover_water_wall", {
	description = "Water Cover Wall",
	tiles = {
		{image="castle_water_flowing_animated.png",
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
			},
--	alpha = WATER_ALPHA,
	inventory_image = "default_water.png" ,
	wield_image = "default_water.png",
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    walkable = false,
--    selection_box={
--       type="fixed",
--        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
--    },
	groups = {choppy=2,dig_immediate=1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("castle:cover_water_wall_opaque2", {
	description = "Water Cover Wall Opaque 2",
	tiles = {
		{image="castle_water_flowing_animated2.png",
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
			},
--	alpha = WATER_ALPHA,
	inventory_image = "default_water.png" ,
	wield_image = "default_water.png",
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    walkable = false,
--    selection_box={
--       type="fixed",
--        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
--    },
	groups = {choppy=2,dig_immediate=1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("castle:cover_water_wall_opaque1", {
	description = "Water Cover Wall Opaque 1",
	tiles = {
		{image="castle_water_flowing_animated1.png",
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
			},
--	alpha = WATER_ALPHA,
	inventory_image = "default_water.png" ,
	wield_image = "default_water.png",
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    walkable = false,
--    selection_box={
--       type="fixed",
--        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
--    },
	groups = {choppy=2,dig_immediate=1},
--	sounds = default.node_sound_stone_defaults(),
})
