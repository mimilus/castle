local castle_towerturningstair = {}

castle_towerturningstair.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle_corner_stonewall1.png","castle_corner_stonewall2.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle_dungeon_stone_corner_1.png","castle_dungeon_stone_corner_2.png","castle:dungeonwall"},
	{"pavingstone","PavingStone","castle_pavement_brick.png","castle_pavement_brick_corner1.png","castle_pavement_brick_corner2.png","castle:pavement"},
	{"cornerwall_turning_stair","CornerWall","castle_cornwall.png","castle:cornerwall"},
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
--	{"wood_turning_stair","Wood Turning Stair","default_wood.png","default:wood"},
--	{"sand_stone","Sand Stone","default_sandstone.png","default:sandstone"},
--	{"obsidian","Obsidian","default_obsidian.png","default:obsidian"},
--	{"gravel","Gravel","default_gravel.png","default:gravel"},
--	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
	
}

for _, row in ipairs(castle_towerturningstair.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local tile1 = row[4]
	local tile2 = row[5]
	local craft_logical = row[6]

--Turning Left Slab
minetest.register_node("castle:" ..name.. "_turning_stairleftslab",{
	drawtype="nodebox",
		description = desc.. " Left Turning Slab",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {inv},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,0.4375,0.5,0,0.5}, --NodeBox18--
			{-0.5,-0.5,0.3125,0.375,0,0.375}, --NodeBox19--
			{-0.5,-0.5,0.1875,0.25,0,0.25}, --NodeBox20--
			{-0.5,-0.5,0.0625,0.125,0,0.125}, --NodeBox21--
			{-0.5,-0.5,-0.0625,0,0,0}, --NodeBox22--
			{-0.5,-0.5,-0.1875,-0.125,0,-0.125}, --NodeBox23--
			{-0.5,-0.5,-0.3125,-0.25,0,-0.25}, --NodeBox24--
			{-0.5,-0.5,-0.5,-0.4375,0,-0.4375}, --NodeBox25--
			{-0.5,-0.5,-0.4375,-0.375,0,-0.375}, --NodeBox10
			{-0.5,-0.5,-0.375,-0.3125,0,-0.3125}, --NodeBox11
			{-0.5,-0.5,-0.25,-0.1875,0,-0.1875}, --NodeBox12
			{-0.5,-0.5,-0.125,-0.0625,0,-0.0625}, --NodeBox13
			{-0.5,-0.5,0,0.0625,0,0.0625}, --NodeBox14
			{-0.5,-0.5,0.125,0.1875,0,0.1875}, --NodeBox15
			{-0.5,-0.5,0.25,0.3125,0,0.3125}, --NodeBox16
			{-0.5,-0.5,0.375,0.4375,0,0.4375}, --NodeBox17
	},
	}
})



end
