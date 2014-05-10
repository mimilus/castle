local castle_cornernodes_grassymossy = {}

castle_cornernodes_grassymossy.types = {
	--name						desc						topnograss							tile1																		tile2																		craft						tileside1																					tileside2																					tiletop													tileside												tile																					tilesidegrass
	{"stonewall_corner",		"StoneWall Corner",			"castle_stonewall.png",				"castle_corner_stonewall1.png^castle_grass_side_front_top.png",				"castle_corner_stonewall2.png^castle_grass_side_front_top.png",				"castle:stonewall",			"castle_corner_stonewall1.png^castle_mossy.png^castle_grass_side_front_top.png",			"castle_corner_stonewall2.png^castle_mossy.png^castle_grass_side_front_top.png",			"castle_stonewall.png^castle_top_grass.png",			"castle_stonewall.png^castle_mossy.png",				"castle_stonewall.png^castle_mossy.png^castle_grass_side_front_top.png",				"castle_stonewall.png^castle_grass_side_front_top.png"},
	{"dungeon_corner",			"DungeonWall Corner",		"castle_dungeon_stone.png",			"castle_dungeon_stone_corner_1.png^castle_grass_side_front_top.png",		"castle_dungeon_stone_corner_2.png^castle_grass_side_front_top.png",		"castle:dungeonwall",		"castle_dungeon_stone_corner_1.png^castle_mossy.png^castle_grass_side_front_top.png",		"castle_dungeon_stone_corner_2.png^castle_mossy.png^castle_grass_side_front_top.png",		"castle_dungeon_stone.png^castle_top_grass.png",		"castle_dungeon_stone.png^castle_mossy.png",			"castle_dungeon_stone.png^castle_mossy.png^castle_grass_side_front_top.png",			"castle_dungeon_stone.png^castle_grass_side_front_top.png"},
	{"pavingstone_corner",		"PavingStone Corner",		"castle_pavement_brick.png",		"castle_pavement_brick_corner1.png^castle_grass_side_front_top.png",		"castle_pavement_brick_corner2.png^castle_grass_side_front_top.png",		"castle:pavement",			"castle_pavement_brick_corner1.png^castle_mossy.png^castle_grass_side_front_top.png",		"castle_pavement_brick_corner2.png^castle_mossy.png^castle_grass_side_front_top.png",		"castle_pavement_brick.png^castle_top_grass.png",		"castle_pavement_brick.png^castle_mossy.png",			"castle_pavement_brick.png^castle_mossy.png^castle_grass_side_front_top.png",			"castle_pavement_brick.png^castle_grass_side_front_top.png"},

}

for _, row in ipairs(castle_cornernodes_grassymossy.types) do
	local name			= row[1]
	local desc 			= row[2]
	local topnograss 	= row[3]
	local tile1			= row[4]
	local tile2 		= row[5]
	local craft_logical = row[6]
	local tilebottom1	= row [7]
	local tilebottom2	= row [8]
	local tiletop 		= row [9]
	local tileside 		= row [10]
	local tile 			= row [11]
	local tilesidegrass = row [12]
	local thesound = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},})

minetest.register_craft({
	output = "castle:" ..name.. "_grassy_mossy_corners",
	recipe = {
		{"", "castle:stonewall"},
		{"castle:stonewall", "default:sandstone"},
	}
})
minetest.register_node("castle:" ..name.. "_grassy_mossy_corners", {
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Grassy Mossy Castle Corner" ..desc,
	tiles = {tiletop, 
			tileside,
			tilebottom1, 
			tile, 
			tile, 
			tilebottom2},
	groups = {cracky=3},
	sounds = thesound ,
})

minetest.register_craft({
	output = "castle:" ..name.. "_grassy_corners",
	recipe = {
		{"", "castle:stonewall"},
		{"castle:stonewall", "default:sandstone"},
	}
})
minetest.register_node("castle:" ..name.. "_grassy_corners", {
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Grassy Castle Corner" ..desc,
	tiles = {tiletop, 
			topnograss,
			tile1, 
			tilesidegrass, 
			tilesidegrass, 
			tile2},
	groups = {cracky=3},
	sounds = thesound ,
})



end

