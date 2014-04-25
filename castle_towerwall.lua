local towerwall = {}

towerwall.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
	{"pavingstone","Paving Stone","castle_pavement_brick.png","castle:pavement"},
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



for _, row in ipairs(towerwall.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]

--Standart towerwall
	minetest.register_node("castle:" ..name.. "normaltowerwall", {
	    drawtype = "nodebox",
		description = desc.." Normal Tower Wall ",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
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
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "normaltowerwall 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- TowerWall Part1
	minetest.register_node("castle:" ..name.. "towerwallpartone", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Part One",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.4375,0.5,0.5}, --NodeBox1
			{-0.375,-0.5,-0.4375,-0.3125,0.5,0.5}, --NodeBox2
			{-0.25,-0.5,-0.375,-0.1875,0.5,0.5}, --NodeBox3
			{-0.125,-0.5,-0.3125,-0.0625,0.5,0.5}, --NodeBox4
			{0,-0.5,-0.25,0.0625,0.5,0.5}, --NodeBox5
			{0.125,-0.5,-0.1875,0.1875,0.5,0.5}, --NodeBox6
			{0.25,-0.5,-0.125,0.3125,0.5,0.5}, --NodeBox7
			{0.375,-0.5,-0.0625,0.4375,0.5,0.5}, --NodeBox8
			{-0.4375,-0.5,-0.5,-0.375,0.5,0.5}, --NodeBox9
			{-0.3125,-0.5,-0.4375,-0.25,0.5,0.5}, --NodeBox10
			{-0.1875,-0.5,-0.375,-0.125,0.5,0.5}, --NodeBox11
			{-0.0625,-0.5,-0.3125,0,0.5,0.5}, --NodeBox12
			{0.0625,-0.5,-0.25,0.125,0.5,0.5}, --NodeBox13
			{0.1875,-0.5,-0.1875,0.25,0.5,0.5}, --NodeBox14
			{0.3125,-0.5,-0.125,0.375,0.5,0.5}, --NodeBox15
			{0.4375,-0.5,-0.0625,0.5,0.5,0.5}, --NodeBox16
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallpartone 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


	-- TowerWall Part2
	minetest.register_node("castle:" ..name.. "towerwallparttwo", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Part Two",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,0,-0.375,0.5,0.5}, --NodeBox1
			{-0.375,-0.5,0.0625,-0.25,0.5,0.5}, --NodeBox2
			{-0.25,-0.5,0.125,-0.125,0.5,0.5}, --NodeBox3
			{-0.125,-0.5,0.1875,0,0.5,0.5}, --NodeBox4
			{0,-0.5,0.25,0.125,0.5,0.5}, --NodeBox5
			{0.125,-0.5,0.3125,0.25,0.5,0.5}, --NodeBox6
			{0.25,-0.5,0.375,0.375,0.5,0.5}, --NodeBox7
			{0.375,-0.5,0.4375,0.5,0.5,0.5}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallparttwo 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


end
