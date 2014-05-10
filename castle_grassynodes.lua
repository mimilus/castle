local castle_grassynodes_ = {}

castle_grassynodes_.types = {
-----Material Name	Material Desc		Standart tile "inv"												Craft					tileup		tiledown						tileleft													tileright													tilebehind			tilefront
{"cobble",			"Cobble",			"default_cobble.png^castle_grass_side_front_top_16.png",		"default:cobble",		nil,		"default_cobble.png",			"default_cobble.png^castle_grass_side_right_16.png",		"default_cobble.png^castle_grass_side_left_16.png",			nil,				"default_cobble.png^castle_grass_side_front_16.png"},
{"dirt",			"Dirt",				"default_dirt.png^castle_grass_side_front_top_16.png",			"default:dirt",			nil,		"default_dirt.png",				"default_dirt.png^castle_grass_side_right_16.png",			"default_dirt.png^castle_grass_side_left_16.png",			nil,				"default_dirt.png^castle_grass_side_front_16.png"},
{"stone",			"Stone",			"default_stone.png^castle_grass_side_front_top_16.png",			"default:stone",		nil,		"default_stone.png",			"default_stone.png^castle_grass_side_right_16.png",			"default_stone.png^castle_grass_side_left_16.png",			nil,				"default_stone.png^castle_grass_side_front_16.png"},
{"brick",			"Brick",			"default_brick.png^castle_grass_side_front_top_16.png",			"default:brick",		nil,		"default_brick.png",			"default_brick.png^castle_grass_side_right_16.png",			"default_brick.png^castle_grass_side_left_16.png",			nil,				"default_brick.png^castle_grass_side_front_16.png"},
{"stonebrick",		"Stone Brick",		"default_stone_brick.png^castle_grass_side_front_top_16.png",	"default:stonebrick",	nil,		"default_stone_brick.png",		"default_stone_brick.png^castle_grass_side_right_16.png",	"default_stone_brick.png^castle_grass_side_left_16.png",	nil,				"default_stone_brick.png^castle_grass_side_front_16.png"},
{"coloredbrick",	"Colored Brick",	"color_brick.png^castle_grass_side_front_top_16.png",			"castle:colored_brick", nil,		"color_brick.png",				"color_brick.png^castle_grass_side_right_16.png",			"color_brick.png^castle_grass_side_left_16.png",			nil,				"color_brick.png^castle_grass_side_front_16.png"},

--Castlenodes

{"stonewall",		"StoneWall",		"castle_stonewall.png^castle_grass_side_front_top.png",			"castle:stonewall",		nil,		"castle_stonewall.png",			"castle_stonewall.png^castle_grass_side_right.png",			"castle_stonewall.png^castle_grass_side_left.png",			nil,				"castle_stonewall.png^castle_grass_side_front.png"},
{"dungeon",			"DungeonWall",		"castle_dungeon_stone.png^castle_grass_side_front_top.png",		"castle:dungeonwall",	nil,		"castle_dungeon_stone.png",		"castle_dungeon_stone.png^castle_grass_side_right.png",		"castle_dungeon_stone.png^castle_grass_side_left.png",		nil,				"castle_dungeon_stone.png^castle_grass_side_front.png"},
{"cornerwall",		"CornerWall",		"castle_cornwall.png^castle_grass_side_front_top.png",			"castle:cornerwall",	nil,		"castle_cornwall.png",			"castle_cornwall.png^castle_grass_side_right.png",			"castle_cornwall.png^castle_grass_side_left.png",			nil,				"castle_cornwall.png^castle_grass_side_front.png"},
{"pavingstone",		"Paving Stone",		"castle_pavement_brick.png^castle_grass_side_front_top.png",	"castle:pavement",		nil,		"castle_pavement_brick.png",	"castle_pavement_brick.png^castle_grass_side_right.png",	"castle_pavement_brick.png^castle_grass_side_left.png",		nil,				"castle_pavement_brick.png^castle_grass_side_front.png"},


--	{"desert_stone_brick","Desert Stone Brick","default_desert_stone_brick.png","default:desertstonebrick"},
--	{"sand_stone_brick","Sand Stone Brick","default_sandstone_brick.png","default:sandstonebrick"},
--	{"tree","Tree","default_tree.png","default:tree"},
--	{"wood","Wood","default_wood.png","default:wood"},
--	{"sand_stone","Sand Stone","default_sandstone.png","default:sandstone"},
--	{"obsidian","Obsidian","default_obsidian.png","default:obsidian"},
--	{"gravel","Gravel","default_gravel.png","default:gravel"},
--	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
--	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
--	{"sand","Sand","default_sand.png","default:sand"},
--	{"desert_sand","Desert Sand","default_desert_sand.png","default:desert_sand"},
--	{"desert_stone","Desert Stone","default_desert_stone.png","default:desert-stone"},
--	{"steel","Steel","default_steel_block.png","default:steelblock"},
--	{"glass","Glass","default_glass.png","default:glass"},

}

for _, row in ipairs(castle_grassynodes_.types) do
	local name =			 row[1]
	local desc =			 row[2]
	local inv =				 row[3] -- if alone , tile for all visible faces
	local craft_logical =	 row[4]
	local tileup =			 row[5]
	local tiledown =		 row[6]
	local tileleft =		 row[7]
	local tileright =		 row[8]
	local tilebehind =		 row[9]
	local tilefront =		 row[10]
--	local alltiles		-- Definition for all faces

	if inv == nil
		then	inv = "default_dirt.png^default_grass_side.png"
	end
	if tileup == nil
		then	tileup = "castle_top_grass.png"
	end
	if tiledown == nil
		then	tiledown = inv
	end
	if tileleft == nil
		then	tileleft = inv
	end
	if tileright == nil
		then	tileright = inv
	end
	if tilebehind == nil
		then	tilebehind = inv
	end
	if tilefront == nil
		then	tilefront = inv
	end

local thesound = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},})

minetest.register_craft({
	output = "castle:" ..name.. "_top_grassy",
	recipe = {
		{"default:cobble"},
		{"default:desert_stone"},
	}
})
minetest.register_node("castle:" ..name.. "_top_grassy", {
	drawtype="drawbox",
	paramtype = "light",
--	paramtype2 = "facedir",
	description = "Top Grassy " ..desc,
	tiles = { tileup, tiledown, inv, inv, inv, inv },
--	inventory_image = tileup,
	groups = {cracky=3},
	sounds = thesound ,

})

minetest.register_craft({
	output = "castle:" ..name.. "_stairs_top_grassy",
	recipe = {
		{"default:cobble"},
		{"default:desert_stone"},
	}
})
minetest.register_node("castle:" ..name.. "_stairs_top_grassy", {
	drawtype="nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Top Grassy " ..desc.. " Stairs",
	tiles = { tileup, tiledown, tileleft, tileright, tilebehind, tilefront },
--	inventory_image = tileup,
	groups = {cracky=3},
	sounds = thesound ,
		node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0,0.5}, --NodeBox1
			{-0.5,0,0,0.5,0.5,0.5} --NodeBox2
		}
	},

})

minetest.register_craft({
	output = "castle:" ..name.. "_slabs_top_grassy",
	recipe = {
		{"default:cobble"},
		{"default:desert_stone"},
	}
})
minetest.register_node("castle:" ..name.. "_slabs_top_grassy", {
	drawtype="nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Top Grassy " ..desc.. " Slabs",
	tiles = { tileup, tiledown, tilefront,tilefront,tilefront,tilefront },
--	inventory_image = tileup,
	groups = {cracky=3},
	sounds = thesound ,
		node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0,0.5} --NodeBox1
		}
	},

})

minetest.register_node("castle:" ..name.. "_cornerstairs_top_grassy", {
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Top Grassy " ..desc.. " Corner Stairs",
	tiles = { tileup, tiledown, tileleft, tilebehind, tilebehind, tileright },
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

minetest.register_node("castle:" ..name.. "_cornerslab_top_grassy", {
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Top Grassy " ..desc.. " Slab Stairs",
	tiles = { tileup, tiledown, tilefront, tileright, tileleft, tilefront },
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0,0.5}, --NodeBox1
			{-0.5,0,0,0,0.5,0.5}, --NodeBox2
			}
	},
	groups = {cracky=3},
	sounds = thesound ,
})
end
