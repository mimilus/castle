local castle_stairs = {}

castle_stairs.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
	{"stonebrick","Stone Brick","default_stone_brick.png","default:stonebrick"},
	{"pavingstone","Paving Stone","castle_pavement_brick.png","castle:pavement"},
	{"grass",			"Grass",				"castle_top_grass.png",			"default:grass"},
	{"dirt","Dirt","default_dirt.png","default:dirt"},
--	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
--	{"stone","Stone","default_stone.png","default:stone"},
--	{"cobble","Cobble","default_cobble.png","default:cobble"},
--	{"sand","Sand","default_sand.png","default:sand"},
--	{"desert_sand","Desert Sand","default_desert_sand.png","default:desert_sand"},
--	{"desert_stone","Desert Stone","default_desert_stone.png","default:desert-stone"},
	{"brick","Brick","default_brick.png","default:brick"},
	{"coloredbrick","Colored Brick","color_brick.png","castle:colored_brick"},
--	{"steel","Steel","default_steel_block.png","default:steelblock"},
--	{"glass","Glass","default_glass.png","default:glass"},
--	{"desert_stone_brick","Desert Stone Brick","default_desert_stone_brick.png","default:desertstonebrick"},
--	{"sand_stone_brick","Sand Stone Brick","default_sandstone_brick.png","default:sandstonebrick"},
--	{"tree","Tree","default_tree.png","default:tree"},
--	{"wood","Wood","default_wood.png","default:wood"},
--	{"sand_stone","Sand Stone","default_sandstone.png","default:sandstone"},
--	{"obsidian","Obsidian","default_obsidian.png","default:obsidian"},
--	{"gravel","Gravel","default_gravel.png","default:gravel"},
--	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
	
}

for _, row in ipairs(castle_stairs.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local craft_logical = row[4]


stairs.register_stair_and_slab(name, craft_logical,
		{cracky=3},
		{inv},
		"Castle " ..desc.. " Stair",
		"Castle " ..desc.. " Slab",
		default.node_sound_stone_defaults())

minetest.register_craft({
	output = "castle:stairs 12",
	recipe = {
		{"castle:stonewall","",""},
		{"castle:stonewall","castle:stonewall",""},
		{"castle:stonewall","castle:stonewall","castle:stonewall"},
	}
})

minetest.register_craft({
	output = "castle:stairs 2",
	recipe = {
		{"castle:stonewall","",""},
		{"castle:saw","",""},
		{"","",""},
	}
})
end
