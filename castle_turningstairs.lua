local castle_turningstair = {}

castle_turningstair.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
		{"grass",			"Grass",				"castle_top_grass.png",			"default:grass"},
--	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
	{"dirt","Dirt","default_dirt.png","default:dirt"},
	{"stone","Stone","default_stone.png","default:stone"},
	{"cobble","Cobble","default_cobble.png","default:cobble"},
--	{"sand","Sand","default_sand.png","default:sand"},
--	{"desert_sand","Desert Sand","default_desert_sand.png","default:desert_sand"},
--	{"desert_stone","Desert Stone","default_desert_stone.png","default:desert-stone"},
	{"brick","Brick","default_brick.png","default:brick"},
	{"coloredbrick","Colored Brick","color_brick.png","castle:colored_brick"},
--	{"steel","Steel","default_steel_block.png","default:steelblock"},
--	{"glass","Glass","default_glass.png","default:glass"},
	{"stonebrick","Stone Brick","default_stone_brick.png","default:stonebrick"},
--	{"desert_stone_brick","Desert Stone Brick","default_desert_stone_brick.png","default:desertstonebrick"},
--	{"sand_stone_brick","Sand Stone Brick","default_sandstone_brick.png","default:sandstonebrick"},
--	{"tree","Tree","default_tree.png","default:tree"},
--	{"wood","Wood","default_wood.png","default:wood"},
--	{"sand_stone","Sand Stone","default_sandstone.png","default:sandstone"},
--	{"obsidian","Obsidian","default_obsidian.png","default:obsidian"},
--	{"gravel","Gravel","default_gravel.png","default:gravel"},
	{"pavingstone","Paving Stone","castle_pavement_brick.png","castle:pavement"},
--	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
	
}

for _, row in ipairs(castle_turningstair.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local tile1 = row[4]
	local tile2 = row[5]
	local craft_logical = row[6]

--Turning Left stair
minetest.register_node(":stairs" ..name.. "_turning_stairleft",{
	drawtype="nodebox",
		description = desc.. " Left Turning Stair",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {inv},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0,0.5}, --NodeBox1
			{-0.5,0,0.4375,0.5,0.5,0.5}, --NodeBox18--
			{-0.5,0,0.3125,0.375,0.5,0.375}, --NodeBox19--
			{-0.5,0,0.1875,0.25,0.5,0.25}, --NodeBox20--
			{-0.5,0,0.0625,0.125,0.5,0.125}, --NodeBox21--
			{-0.5,0,-0.0625,0,0.5,0}, --NodeBox22--
			{-0.5,0,-0.1875,-0.125,0.5,-0.125}, --NodeBox23--
			{-0.5,0,-0.3125,-0.25,0.5,-0.25}, --NodeBox24--
			{-0.5,0,-0.5,-0.4375,0.5,-0.4375}, --NodeBox25--
			{-0.5,0,-0.4375,-0.375,0.5,-0.375}, --NodeBox10
			{-0.5,0,-0.375,-0.3125,0.5,-0.3125}, --NodeBox11
			{-0.5,0,-0.25,-0.1875,0.5,-0.1875}, --NodeBox12
			{-0.5,0,-0.125,-0.0625,0.5,-0.0625}, --NodeBox13
			{-0.5,0,0,0.0625,0.5,0.0625}, --NodeBox14
			{-0.5,0,0.125,0.1875,0.5,0.1875}, --NodeBox15
			{-0.5,0,0.25,0.3125,0.5,0.3125}, --NodeBox16
			{-0.5,0,0.375,0.4375,0.5,0.4375}, --NodeBox17
	},
	}
})

--Turning Right stair
minetest.register_node(":stairs" ..name.. "_turning_stairright",{
	drawtype="nodebox",
		description = desc.. " Right Turning Stair",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {inv},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0,0.5}, --NodeBox1
			{0.5,0,0.4375,-0.5,0.5,0.5}, --NodeBox18--
			{0.5,0,0.3125,-0.375,0.5,0.375}, --NodeBox19--
			{0.5,0,0.1875,-0.25,0.5,0.25}, --NodeBox20--
			{0.5,0,0.0625,-0.125,0.5,0.125}, --NodeBox21--
			{0.5,0,-0.0625,0,0.5,0}, --NodeBox22--
			{0.5,0,-0.1875,0.125,0.5,-0.125}, --NodeBox23--
			{0.5,0,-0.3125,0.25,0.5,-0.25}, --NodeBox24--
			{0.5,0,-0.5,0.4375,0.5,-0.4375}, --NodeBox25--
			{0.5,0,-0.4375,0.375,0.5,-0.375}, --NodeBox10
			{0.5,0,-0.375,0.3125,0.5,-0.3125}, --NodeBox11
			{0.5,0,-0.25,0.1875,0.5,-0.1875}, --NodeBox12
			{0.5,0,-0.125,0.0625,0.5,-0.0625}, --NodeBox13
			{0.5,0,0,-0.0625,0.5,0.0625}, --NodeBox14
			{0.5,0,0.125,-0.1875,0.5,0.1875}, --NodeBox15
			{0.5,0,0.25,-0.3125,0.5,0.3125}, --NodeBox16
			{0.5,0,0.375,-0.4375,0.5,0.4375}, --NodeBox17
	},
	}
})





end
