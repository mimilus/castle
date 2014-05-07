local castle_mossynodes_ = {}

castle_mossynodes_.types = {
	{"stonewall_mossy","StoneWall","castle_stonewall.png","castle_corner_stonewall1.png","castle_corner_stonewall2.png","castle:stonewall"},
	{"dungeon_mossy","DungeonWall","castle_dungeon_stone.png","castle_dungeon_stone_corner_1.png","castle_dungeon_stone_corner_2.png","castle:dungeonwall"},
	{"pavingstone_mossy","PavingStone","castle_pavement_brick.png","castle_pavement_brick_corner1.png","castle_pavement_brick_corner2.png","castle:pavement"},
	{"cornerwall_mossy","CornerWall","castle_cornwall.png","castle:cornerwall"},
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

for _, row in ipairs(castle_mossynodes_.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local tile1 = row[4]
	local tile2 = row[5]
	local craft_logical = row[6]

minetest.register_craft({
	output = "castle:" ..name,
	recipe = {
		{"", "castle:stonewall"},
		{"castle:stonewall", "default:sandstone"},
	}
})
minetest.register_node("castle:" ..name, {
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Castle Mossy " ..desc,
	tiles = {inv, 	--top
			inv, 	--bottom
			"mossy_" ..inv, 
			"mossy_" ..inv, 
			"mossy_" ..inv, 
			"mossy_" ..inv},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

end
