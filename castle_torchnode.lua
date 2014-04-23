local castle_torchnode = {}

castle_torchnode.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle_stonewall_torchnode_animated.png","castle_corner_stonewall2.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle_dungeon_torchnode_animated.png","castle_dungeon_stone_corner_2.png","castle:dungeonwall"},
	{"pavingstone","PavingStone","castle_pavement_brick.png","castle_pavement_torchnode_animated.png","castle_pavement_brick_corner2.png","castle:pavement"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle_cornwall_torchnode_animated.png"},
--	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
--	{"dirt","Dirt","default_dirt.png","default:dirt"},
--	{"stone","Stone","default_stone.png","default:stone"},
--	{"cobble","Cobble","default_cobble.png","default:cobble"},
--	{"sand","Sand","default_sand.png","default:sand"},
--	{"desert_sand","Desert Sand","default_desert_sand.png","default:desert_sand"},
--	{"desert_stone","Desert Stone","default_desert_stone.png","default:desert-stone"},
--	{"brick","Brick","default_brick.png","default:brick"},
--	{"steel","Steel","default_steel_block.png","default:steelblock"},
--	{"glass","Glass","default_glass.png","default:glass"},
--	{"stonebrick","Stone Brick","default_stone_brick.png","default:stonebrick"},
--	{"desert_stone_brick","Desert Stone Brick","default_desert_stone_brick.png","default:desertstonebrick"},
--	{"sand_stone_brick","Sand Stone Brick","default_sandstone_brick.png","default:sandstonebrick"},
--	{"tree","Tree","default_tree.png","default:tree"},
--	{"wood","Wood","default_wood.png","default:wood"},
--	{"sand_stone","Sand Stone","default_sandstone.png","default:sandstone"},
--	{"obsidian","Obsidian","default_obsidian.png","default:obsidian"},
--	{"gravel","Gravel","default_gravel.png","default:gravel"},
--	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
	
}

for _, row in ipairs(castle_torchnode.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
--	local statictile = row[4]
	local animtile = row[4]
--	local craft_logical = row[6]

minetest.register_node("castle:standart_torch_node_" ..name,{
	description = "Torch In " ..desc.. " Block",
	tiles = { inv ,
			  inv ,
			{
			image = animtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = animtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = animtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = animtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
	},
    drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.25,0.5},
			{-0.5,0.25,-0.5,0.5,0.5,0.5},
			{0.25,-0.25,0.25,0.5,0.25,0.5},
			{0.25,-0.25,-0.5,0.5,0.25,-0.25},
			{-0.5,-0.25,-0.5,-0.25,0.25,-0.25},
			{-0.5,-0.25,0.25,-0.25,0.25,0.5},
			{-0.5,-0.25,-0.25,-0.375,-0.015625,0.25},
			{0.375,-0.25,-0.25,0.5,-0.015625,0.25},
			{-0.25,-0.25,0.375,0.25,-0.015625,0.5},
			{-0.25,-0.25,-0.5,0.25,-0.015625,-0.375},
			{-0.25,-0.25,-0.25,0.25,0.25,0.25},
		},
	},
		light_source = LIGHT_MAX-1,
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})

--pillar_torch
minetest.register_node("castle:pillar_torch_node_" ..name,{
	description = "Torch In " ..desc.. " Pillar",
	tiles = { inv ,
			  inv ,
			{
			image = animtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = animtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = animtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = animtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
	},
    drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25,0.25,-0.25,0.25,0.5,0.25},
			{-0.25,-0.5,-0.25,0.25,0,0.25},
			{-0.125,-0.25,-0.125,0.125,0.25,0.125},
			{0.0625,0,0.0625,0.25,0.25,0.25},
			{-0.25,0,0.0625,-0.0625,0.25,0.25},
			{0.0625,0,-0.25,0.25,0.25,-0.0625},
			{-0.25,0,-0.25,-0.0625,0.25,-0.0625},
		},
	},
		light_source = LIGHT_MAX-1,
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})

end
