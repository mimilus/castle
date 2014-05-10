local cornerstairs = {}

cornerstairs.types = {
-----Material			Material Desc			Standart tile					Craft						tileup				tiledown			tileleft			tileright			tilebehind			tilefront
	{"stonewall",		"StoneWall",			"castle_stonewall.png",			"castle:stonewall"},
	{"dungeon",			"DungeonWall",			"castle_dungeon_stone.png",		"castle:dungeonwall"},
	{"cornerwall",		"CornerWall",			"castle_cornwall.png",			"castle:cornerwall"},
	{"dirt",			"Dirt",					"default_dirt.png",				"default:dirt"},
	{"stone",			"Stone",				"default_stone.png",			"default:stone"},
	{"pavingstone",		"Paving Stone",			"castle_pavement_brick.png",	"castle:pavement"},
	{"stonebrick",		"Stone Brick",			"default_stone_brick.png",		"default:stonebrick"},
	{"cobble",			"Cobble",				"default_cobble.png",			"default:cobble"},
	{"grass",			"Grass",				"castle_top_grass.png",			"default:grass"},
	----nothing else
--	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
--	{"junglewood","Jungle Wood","default_junglewood.png","default:default_junglewood"},
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

for _, row in ipairs(cornerstairs.types) do
	local name =			 row[1]
	local desc =			 row[2]
	local inv =				 row[3]
	local craft_logical =	 row[4]
	local tileup =			 row[5] -- if alone , tile for all faces
	local tiledown =		 row[6]
	local tileleft =		 row[7]
	local tileright =		 row[8]
	local tilebehind =		 row[9]
	local tilefront =		 row[10]
	local alltiles		-- Definition for all faces


if tilesdown == nil then
alltiles = { inv }
else
alltiles = { tileup,tiledown,tileleft,tileright,tilebehind,tilefront }
end


minetest.register_node(":stairs:stair_" ..name.. "_cornerstairs", {
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Castle " ..desc.. " Corner Stairs",
	tiles = alltiles ,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0,0.5}, --NodeBox1
			{0,0,0,0.5,0.5,0.5}, --NodeBox2
			{-0.5,0,-0.5,0,0.5,0.5},
			}
	},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node(":stairs:stair_" ..name.. "_cornerslab", {
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Castle " ..desc.. " Slab Stairs",
	tiles = alltiles ,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0,0.5}, --NodeBox1
			{-0.5,0,0,0,0.5,0.5}, --NodeBox2
			}
	},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

end
