local castle_cornernodes_ = {}

castle_cornernodes_.types = {
	--name						desc						inv														tile1														tile2														craft						tileside1														tileside2															tiletop							tileside
	{"stonewall_corner",		"StoneWall Corner",			"castle_stonewall.png^castle_mossy.png",				"castle_corner_stonewall1.png^castle_mossy.png",			"castle_corner_stonewall2.png^castle_mossy.png",			"castle:stonewall",			"castle_corner_stonewall1.png^castle_mossy_bottom.png",			"castle_corner_stonewall2.png^castle_mossy_bottom.png",				"castle_stonewall.png",			"castle_stonewall.png^castle_mossy_bottom.png"},
	{"dungeon_corner",			"DungeonWall Corner"		,"castle_dungeon_stone.png^castle_mossy.png",			"castle_dungeon_stone_corner_1.png^castle_mossy.png",		"castle_dungeon_stone_corner_2.png^castle_mossy.png",		"castle:dungeonwall",		"castle_dungeon_stone_corner_1.png^castle_mossy_bottom.png",	"castle_dungeon_stone_corner_2.png^castle_mossy_bottom.png",		"castle_dungeon_stone.png",		"castle_dungeon_stone.png^castle_mossy_bottom.png"},
	{"pavingstone_corner",		"PavingStone Corner"		,"castle_pavement_brick.png^castle_mossy.png",			"castle_pavement_brick_corner1.png^castle_mossy.png",		"castle_pavement_brick_corner2.png^castle_mossy.png",		"castle:pavement",			"castle_pavement_brick_corner1.png^castle_mossy_bottom.png",	"castle_pavement_brick_corner2.png^castle_mossy_bottom.png",		"castle_pavement_brick.png",	"castle_pavement_brick.png^castle_mossy_bottom.png"},
--	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
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

for _, row in ipairs(castle_cornernodes_.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local tile1 = row[4]
	local tile2 = row[5]
	local craft_logical = row[6]
	local tilebottom1 = row [7]
	local tilebottom2 = row [8]
	local tiletop = row [9]
	local tileside = row [10]

minetest.register_craft({
	output = "castle:" ..name.. "_top_mossy",
	recipe = {
		{"", "castle:stonewall"},
		{"castle:stonewall", "default:sandstone"},
	}
})
minetest.register_node("castle:" ..name.. "_top_mossy", {
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Mossy Castle Corner" ..desc,
	tiles = {inv, 
			inv,
			tile1, 
			inv, 
			inv, 
			tile2},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "castle:" ..name.. "_bottom_mossy",
	recipe = {
		{"", "castle:stonewall"},
		{"castle:stonewall", "default:sandstone"},
	}
})
minetest.register_node("castle:" ..name.. "_bottom_mossy", {
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Bottom Mossy Castle Corner" ..desc,
	tiles = {tiletop, 
			inv,
			tilebottom1, 
			tileside, 
			tileside, 
			tilebottom2},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})



end

