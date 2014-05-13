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

local castle_torchnode = {}

castle_torchnode.types = {
	--name			Desc				inv									animtile										pillar_animtile												anim_torch_in_corner										anim_torch_in_pillar_corner									anim_side														anim_side_front
	{"stonewall",	"StoneWall",		"castle_stonewall.png",				"castle_stonewall_torchnode_animated.png",		"castle_stonewall_pillar_middle_torch_animated.png",		"castle_stonewall_torch_incorner_node_animated.png",		"castle_stonewall_torchinpillar_corner_animated.png",		"castle_stonewall_torchinpillar_side_animated.png",				"castle_stonewall_torchinpillar_side_front_animated.png"},
	{"dungeon",		"DungeonWall",		"castle_dungeon_stone.png",			"castle_dungeon_torchnode_animated.png",		"castle_dungeonwall_pillar_middle_torch_animated.png",		"castle_dungeonwall_torch_incorner_node_animated.png",		"castle_dungeonwall_torchinpillar_corner_animated.png",		"castle_dungeonwall_torchinpillar_side_animated.png",			"castle_dungeonwall_torchinpillar_side_front_animated.png","castle:dungeonwall"},
	{"pavingstone",	"PavingStone",		"castle_pavement_brick.png",		"castle_pavement_torchnode_animated.png",		"castle_pavementwall_pillar_middle_torch_animated.png",		"castle_pavementwall_torch_incorner_node_animated.png",		"castle_pavement_torchinpillar_corner_animated.png",		"castle_pavement_torchinpillar_side_animated.png"				,"castle_pavement_torchinpillar_side_front_animated.png","castle:pavement"},
	{"cornerwall",	"CornerWall",		"castle_cornwall.png",				"castle_cornwall_torchnode_animated.png",		"castle_cornwall_pillar_middle_torch_animated.png",			"castle_cornwall_torch_incorner_node_animated.png",			"castle_cornwall_torchinpillar_corner_animated.png",		"castle_cornwall_torchinpillar_side_animated.png",				"castle_cornwall_torchinpillar_side_front_animated.png",},
	
}

for _, row in ipairs(castle_torchnode.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
--	local statictile = row[4]
	--ANIMATION
	local animtile = row[4]		--Standart Node top bottom
	local pillaranimtile = row[5]		--Pillar Middle 4 faces
	local anim_torch_in_corner = row[6] --Torch Into Corner
	local anim_torch_in_corner_pillar =row [7]
	local anim_side = row [8]
	local anim_side_front = row [9]
--	local craft_logical = row[6]

--Torch in standart node
minetest.register_node("castle:" ..name.. "_standart_torch_node_",{
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
minetest.register_node("castle:" ..name.. "_pillar_torch_node_",{
	description = "Torch In " ..desc.. " Pillar",
	tiles = { inv ,
			  inv ,
			{
			image = pillaranimtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = pillaranimtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = pillaranimtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = pillaranimtile,
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

--pillar_corner_torch
minetest.register_node("castle:" ..name.. "_in_corner_pillar_torch_node",{
	description = "Torch In " ..desc.. " Corner Pillar",
	tiles = { inv ,
			  inv ,
			{
			image = anim_torch_in_corner_pillar,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			inv,
			inv,
			  			{
			image = anim_torch_in_corner_pillar,
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
			{-0.5,0.25,0.0625,-0.0625,0.5,0.5}, --NodeBox1
			{-0.5,-0.5,0.0625,-0.0625,0,0.5}, --NodeBox5
			{-0.375,-0.25,0.125,-0.125,0.25,0.375}, --NodeBox17
			{-0.5,0,0.3125,-0.0625,0.25,0.5}, --NodeBox54
			{-0.1875,0,0.0625,-0.0625,0.25,0.1875}, --NodeBox6
			{-0.5,0,0.0625,-0.3125,0.25,0.3125}, --NodeBox7
		},
	},
		light_source = LIGHT_MAX-1,
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})

--pillar side torch
minetest.register_node("castle:" ..name.. "_side_pillar_torch_node",{
	description = "Torch In " ..desc.. " Side Pillar",
	tiles = { inv ,
			  inv ,
			{
			image = anim_side_front,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			},
			inv,
			{
			image = anim_side,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			},
			{
			image = anim_side,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			},
			{
			image = anim_side,
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
			{-0.5,-0.5,-0.15625,-0.1875,0,0.15625}, --NodeBox1
			{-0.5,0.25,-0.15625,-0.1875,0.5,0.15625}, --NodeBox2
			{-0.5,0,-0.15625,-0.375,0.25,0.15625}, --NodeBox3
			{-0.3125,0,0.0625,-0.1875,0.25,0.15625}, --NodeBox4
			{-0.3125,0,-0.15625,-0.1875,0.25,-0.0625}, --NodeBox5
			{-0.4375,0,-0.125,-0.25,0.25,0.125}, --NodeBox6
		},
	},
		light_source = LIGHT_MAX-1,
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})

--Corner_torch
minetest.register_node("castle:" ..name.. "_torch_in_corner",{
	description = desc.. " Torch In Corner",
	tiles = { inv ,
			  inv ,
			{
			image = anim_torch_in_corner,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			inv,
			inv,
			  			{
			image = anim_torch_in_corner,
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
			{-0.5,-0.375,0.375,-0.375,0.4375,0.5}, --NodeBox1
			{-0.5,-0.25,0.25,-0.25,-0.1875,0.5}, --NodeBox2
			{-0.5,-0.1875,0.1875,-0.1875,0.0625,0.25}, --NodeBox3
			{-0.25,-0.1875,0.25,-0.1875,0.0625,0.5}, --NodeBox4
			{-0.5,0.3125,0.1875,-0.1875,0.375,0.5}, --NodeBox5
			{-0.4375,-0.1875,0.375,-0.375,0.3125,0.4375}, --NodeBox6
			{-0.5,-0.5,0.4375,-0.4375,0.5,0.5}, --NodeBox7
			{-0.5,-0.1875,0.1875,-0.4375,0.3125,0.5}, --NodeBox8
			{-0.5,-0.1875,0.4375,-0.1875,0.3125,0.5}, --NodeBox9
			{-0.5,-0.1875,0.3125,-0.3125,0.25,0.5}, --NodeBox10
			{-0.5,-0.125,0.25,-0.25,0.1875,0.5}, --NodeBox11
		},
	},
		light_source = LIGHT_MAX-1,
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})

--tower_wall_torch
minetest.register_node("castle:towerwall_torch_node_" ..name,{
	description = "Torch In " ..desc.. " Tower Wall",
	tiles = { inv ,
			  inv ,
			{
			image = pillaranimtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = pillaranimtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = pillaranimtile,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 64,
				aspect_h = 64,
				length = 1.5
				},
			  },
			  			{
			image = pillaranimtile,
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
			{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},
			{-0.375,-0.5,-0.375,-0.3125,0.5,0.5},
			{-0.25,-0.5,-0.25,-0.1875,0.5,0.5},
			{-0.125,-0.5,-0.125,-0.0625,0.5,0.5},
			{0,-0.5,0,0.0625,0.5,0.5},
			{0.125,-0.5,0.125,0.1875,0.5,0.5},
			{0.25,-0.5,0.25,0.3125,0.5,0.5},
			{0.375,-0.5,0.375,0.4375,0.5,0.5},
			{-0.4375,-0.5,-0.4375,-0.375,0.5,0.5},
			{-0.3125,-0.5,-0.3125,-0.25,0.5,0.5},
			{-0.1875,-0.5,-0.1875,-0.125,0.5,0.5},
			{-0.0625,-0.5,-0.0625,0,0.5,0.5},
			{0.0625,-0.5,0.0625,0.125,0.5,0.5},
			{0.1875,-0.5,0.1875,0.25,0.5,0.5},
			{0.3125,-0.5,0.3125,0.375,0.5,0.5},
			{0.4375,-0.5,0.4375,0.5,0.5,0.5},
		},
	},
		light_source = LIGHT_MAX-1,
	groups = {choppy=2,dig_immediate=2},
	sounds = default.node_sound_stone_defaults(),
})
end
