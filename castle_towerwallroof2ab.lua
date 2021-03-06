local rooftowerwall2ab = {}

rooftowerwall2ab.types = {
	{"stonewall",	"StoneWall",		"castle_stonewall.png",			"castle:stonewall"},
	{"dungeon",		"DungeonWall",		"castle_dungeon_stone.png",		"castle:dungeonwall"},
	{"cornerwall",	"CornerWall",		"castle_cornwall.png",			"castle:cornerwall"},
	{"pavingstone",	"Paving Stone",		"castle_pavement_brick.png",	"castle:pavement"},
	
		--FOR ROOF
	{"shingles_asphalt",		"Shingles Asphalt",			"shingles_asphalt.png",			"castle:shingles_asphalt"},
	{"shingles_terracotta",		"Shingles Terracotta",		"shingles_terracotta.png",		"castle:shingles_terracotta"},
	{"shingles_wood",			"Shingles Wood",			"shingles_wood.png",			"castle:shingles_wood"},

--	{"slate",		"Slate",			"castle_slate64.png",				"castle:slate"},
--	{"coloredbrick","Colored Brick","color_brick.png","castle:colored_brick"},
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

for _, row in ipairs(rooftowerwall2ab.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]

	-- 2a TowerWall Roof
	minetest.register_node("castle:" ..name.. "towerwallroofone", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof One",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.375,-0.375,-0.375}, --NodeBox1
			{-0.375,-0.5,-0.4375,-0.25,-0.375,-0.3125}, --NodeBox2
			{-0.25,-0.5,-0.375,-0.125,-0.375,-0.25}, --NodeBox3
			{-0.125,-0.5,-0.3125,0,-0.375,-0.1875}, --NodeBox4
			{0,-0.5,-0.25,0.125,-0.375,-0.125}, --NodeBox5
			{0.125,-0.5,-0.1875,0.25,-0.375,-0.0625}, --NodeBox6
			{0.25,-0.5,-0.125,0.375,-0.375,0}, --NodeBox7
			{0.375,-0.5,-0.0625,0.5,-0.375,0.0625}, --NodeBox8
			{0.375,-0.5,0.0625,0.5,-0.25,0.1875}, --NodeBox9
			{0.375,-0.5,0.1875,0.5,-0.125,0.3125}, --NodeBox10
			{0.375,-0.5,0.3125,0.5,0,0.4375}, --NodeBox11
			{0.375,-0.5,0.4375,0.5,0.125,0.5}, --NodeBox12
			{-0.5,-0.5,-0.375,-0.375,-0.25,-0.25}, --NodeBox13
			{-0.375,-0.5,-0.3125,-0.25,-0.25,-0.1875}, --NodeBox14
			{-0.25,-0.5,-0.25,-0.125,-0.25,-0.125}, --NodeBox15
			{-0.125,-0.5,-0.1875,0,-0.25,-0.0625}, --NodeBox16
			{0,-0.5,-0.125,0.125,-0.25,0}, --NodeBox17
			{0.125,-0.5,-0.0625,0.25,-0.25,0.0625}, --NodeBox18
			{0.25,-0.5,0,0.375,-0.25,0.125}, --NodeBox19
			{0.25,-0.5,0.125,0.375,-0.125,0.25}, --NodeBox20
			{0.125,-0.5,0.0625,0.25,-0.125,0.1875}, --NodeBox21
			{0,-0.5,0,0.125,-0.125,0.125}, --NodeBox22
			{-0.125,-0.5,-0.0625,0,-0.125,0.0625}, --NodeBox23
			{-0.25,-0.5,-0.125,-0.125,-0.125,0}, --NodeBox24
			{-0.375,-0.5,-0.1875,-0.25,-0.125,-0.0625}, --NodeBox25
			{-0.5,-0.5,-0.25,-0.375,-0.125,-0.125}, --NodeBox26
			{0.25,-0.5,0.25,0.375,0,0.375}, --NodeBox27
			{0.125,-0.5,0.1875,0.25,0,0.3125}, --NodeBox28
			{0,-0.5,0.125,0.125,0,0.25}, --NodeBox29
			{-0.125,-0.5,0.0625,0,0,0.1875}, --NodeBox30
			{-0.25,-0.5,0,-0.125,0,0.125}, --NodeBox31
			{-0.375,-0.5,-0.0625,-0.25,0,0.0625}, --NodeBox32
			{-0.5,-0.5,-0.125,-0.375,0,0}, --NodeBox33
			{0.25,-0.5,0.375,0.375,0.125,0.5}, --NodeBox34
			{0.125,-0.5,0.3125,0.25,0.125,0.4375}, --NodeBox35
			{0,-0.5,0.25,0.125,0.125,0.375}, --NodeBox36
			{-0.125,-0.5,0.1875,0,0.125,0.3125}, --NodeBox37
			{-0.25,-0.5,0.125,-0.125,0.125,0.25}, --NodeBox38
			{-0.375,-0.5,0.0625,-0.25,0.125,0.1875}, --NodeBox39
			{-0.5,-0.5,0,-0.375,0.125,0.125}, --NodeBox40
			{-0.5,-0.5,0.125,-0.375,0.25,0.25}, --NodeBox41
			{-0.375,-0.5,0.1875,-0.25,0.25,0.3125}, --NodeBox42
			{-0.25,-0.5,0.25,-0.125,0.25,0.375}, --NodeBox43
			{-0.125,-0.5,0.3125,0,0.25,0.4375}, --NodeBox44
			{0,-0.5,0.375,0.125,0.25,0.5}, --NodeBox45
			{0.125,-0.5,0.4375,0.25,0.25,0.5}, --NodeBox46
			{-0.125,-0.5,0.4375,0,0.375,0.5}, --NodeBox47
			{-0.25,-0.5,0.375,-0.125,0.375,0.5}, --NodeBox48
			{-0.375,-0.5,0.3125,-0.25,0.375,0.4375}, --NodeBox49
			{-0.5,-0.5,0.25,-0.375,0.375,0.375}, --NodeBox50
			{-0.375,-0.5,0.4375,-0.25,0.5,0.5}, --NodeBox51
			{-0.5,-0.5,0.375,-0.375,0.5,0.5}, --NodeBox52
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallroofone 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


	-- TowerWall Roof 2b
	minetest.register_node("castle:" ..name.. "towerwallrooftwo", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof Two",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,0,-0.375,-0.375,0.125}, --NodeBox1
			{-0.375,-0.5,0.0625,-0.25,-0.375,0.1875}, --NodeBox2
			{-0.25,-0.5,0.125,-0.125,-0.375,0.25}, --NodeBox3
			{-0.125,-0.5,0.1875,0,-0.375,0.3125}, --NodeBox4
			{0,-0.5,0.25,0.125,-0.375,0.375}, --NodeBox5
			{0.125,-0.5,0.3125,0.25,-0.375,0.4375}, --NodeBox6
			{0.25,-0.5,0.375,0.375,-0.375,0.5}, --NodeBox7
			{0.375,-0.5,0.4375,0.5,-0.375,0.5}, --NodeBox8
			{-0.5,-0.5,0.125,-0.375,-0.25,0.25}, --NodeBox9
			{-0.375,-0.5,0.1875,-0.25,-0.25,0.3125}, --NodeBox10
			{-0.25,-0.5,0.25,-0.125,-0.25,0.375}, --NodeBox11
			{-0.125,-0.5,0.3125,0,-0.25,0.4375}, --NodeBox12
			{0,-0.5,0.375,0.125,-0.25,0.5}, --NodeBox13
			{0.125,-0.5,0.4375,0.25,-0.25,0.5}, --NodeBox14
			{-0.5,-0.5,0.25,-0.375,-0.125,0.375}, --NodeBox15
			{-0.375,-0.5,0.3125,-0.25,-0.125,0.4375}, --NodeBox16
			{-0.25,-0.5,0.375,-0.125,-0.125,0.5}, --NodeBox17
			{-0.125,-0.5,0.4375,0,-0.125,0.5}, --NodeBox18
			{-0.5,-0.5,0.375,-0.375,0,0.5}, --NodeBox19
			{-0.375,-0.5,0.4375,-0.25,0,0.5}, --NodeBox20
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallrooftwo 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- 2a TowerWall Roof Bottom
	minetest.register_node("castle:" ..name.. "towerwallroofonebottom", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof One Bottom",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.125,0}, --NodeBox1
			{-0.5,0.125,-0.5,-0.125,0.5,0}, --NodeBox2
			{-0.125,0.125,-0.4375,0,0.5,0}, --NodeBox4
			{0,0.125,-0.375,0.125,0.5,0}, --NodeBox5
			{0.125,0.125,-0.3125,0.25,0.5,0}, --NodeBox6
			{0.25,0.125,-0.25,0.375,0.5,0}, --NodeBox7
			{0.375,0.125,-0.1875,0.5,0.5,0}, --NodeBox8
			{-0.125,0.125,-0.5,0,0.375,-0.4375}, --NodeBox10
			{0,0.125,-0.5,0.125,0.375,-0.375}, --NodeBox11
			{0.125,0.125,-0.4375,0.25,0.375,-0.3125}, --NodeBox12
			{0.25,0.125,-0.375,0.375,0.375,-0.25}, --NodeBox13
			{0.375,0.125,-0.3125,0.5,0.375,-0.1875}, --NodeBox14
			{0,0.125,-0.5,0.125,0.25,-0.4375}, --NodeBox15
			{0.125,0.125,-0.5,0.25,0.25,-0.4375}, --NodeBox16
			{0.25,0.125,-0.5,0.375,0.25,-0.375}, --NodeBox17
			{0.375,0.125,-0.4375,0.5,0.25,-0.3125}, --NodeBox18
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallroofonebottom 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


	-- Normal TowerWall Roof Bis
	minetest.register_node("castle:" ..name.. "towerwallrooftwobottom", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof Two Bottom",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.125,-0.375,0.5,0}, --1
			{-0.375,-0.5,-0.0625,-0.25,0.5,0.0625}, --2
			{-0.25,-0.5,0,-0.125,0.5,0.125}, --3
			{-0.125,-0.5,0.0625,0,0.5,0.1875}, --4
			{0,-0.5,0.125,0.125,0.5,0.25}, --5
			{0.125,-0.5,0.1875,0.25,0.5,0.3125}, --6
			{0.25,-0.5,0.25,0.375,0.5,0.375}, --7
			{0.375,-0.5,0.3125,0.5,0.5,0.4375}, --8
			{-0.5,-0.5,-0.25,-0.375,0.375,-0.125}, --NodeBox9
			{-0.5,-0.5,-0.375,-0.375,0.25,-0.25}, --NodeBox10
			{-0.5,-0.5,-0.5,-0.375,0.125,-0.375}, --NodeBox11
			{-0.375,-0.5,-0.1875,-0.25,0.375,-0.0625}, --NodeBox12
			{-0.375,-0.5,-0.3125,-0.25,0.25,-0.1875}, --NodeBox13
			{-0.375,-0.5,-0.4375,-0.25,0.125,-0.3125}, --NodeBox14
			{-0.375,-0.5,-0.5,-0.25,0,-0.4375}, --NodeBox15
			{-0.25,-0.5,-0.125,-0.125,0.375,0}, --NodeBox16
			{-0.125,-0.5,-0.0625,0,0.375,0.0625}, --NodeBox17
			{0,-0.5,0,0.125,0.375,0.125}, --NodeBox18
			{0.125,-0.5,0.0625,0.25,0.375,0.1875}, --NodeBox19
			{0.25,-0.5,0.125,0.375,0.375,0.25}, --NodeBox20
			{0.375,-0.5,0.1875,0.5,0.375,0.3125}, --NodeBox21
			{-0.25,-0.5,-0.25,-0.125,0.25,-0.125}, --NodeBox22
			{-0.125,-0.5,-0.1875,0,0.25,-0.0625}, --NodeBox23
			{0,-0.5,-0.125,0.125,0.25,0}, --NodeBox24
			{0.125,-0.5,-0.0625,0.25,0.25,0.0625}, --NodeBox25
			{0.25,-0.5,0,0.375,0.25,0.125}, --NodeBox26
			{0.375,-0.5,0.0625,0.5,0.25,0.1875}, --NodeBox27
			{-0.25,-0.5,-0.375,-0.125,0.125,-0.25}, --NodeBox28
			{-0.125,-0.5,-0.3125,0,0.125,-0.1875}, --NodeBox29
			{0,-0.5,-0.25,0.125,0.125,-0.125}, --NodeBox30
			{0.125,-0.5,-0.1875,0.25,0.125,-0.0625}, --NodeBox31
			{0.25,-0.5,-0.125,0.375,0.125,0}, --NodeBox32
			{0.375,-0.5,-0.0625,0.5,0.125,0.0625}, --NodeBox33
			{-0.25,-0.5,-0.5,-0.125,0,-0.375}, --NodeBox34
			{-0.125,-0.5,-0.4375,0,0,-0.3125}, --NodeBox35
			{0,-0.5,-0.375,0.125,0,-0.25}, --NodeBox36
			{0.125,-0.5,-0.3125,0.25,0,-0.1875}, --NodeBox37
			{0.25,-0.5,-0.25,0.375,0,-0.125}, --NodeBox38
			{0.375,-0.5,-0.1875,0.5,0,-0.0625}, --NodeBox39
			{-0.125,-0.5,-0.5,0,-0.125,-0.4375}, --NodeBox40
			{0,-0.5,-0.5,0.125,-0.125,-0.375}, --NodeBox41
			{0.125,-0.5,-0.4375,0.25,-0.125,-0.3125}, --NodeBox42
			{0.25,-0.5,-0.375,0.375,-0.125,-0.25}, --NodeBox43
			{0.375,-0.5,-0.3125,0.5,-0.125,-0.1875}, --NodeBox44
			{0.125,-0.5,-0.5,0.25,-0.25,-0.4375}, --NodeBox45
			{0.25,-0.5,-0.5,0.375,-0.25,-0.375}, --NodeBox46
			{0.375,-0.5,-0.4375,0.5,-0.25,-0.3125}, --NodeBox47
			{0.375,-0.5,-0.5,0.5,-0.375,-0.4375}, --NodeBox48
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallrooftwobottom 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


--------------------------------------------------
--MIRROR
--------------------------------------------------

	-- 2a TowerWall Roof
	minetest.register_node("castle:" ..name.. "towerwallroofonemirror", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof One Mirror",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,-0.5,0.375,-0.375,-0.375}, --NodeBox1
			{0.375,-0.5,-0.4375,0.25,-0.375,-0.3125}, --NodeBox2
			{0.25,-0.5,-0.375,0.125,-0.375,-0.25}, --NodeBox3
			{0.125,-0.5,-0.3125,0,-0.375,-0.1875}, --NodeBox4
			{0,-0.5,-0.25,-0.125,-0.375,-0.125}, --NodeBox5
			{-0.125,-0.5,-0.1875,-0.25,-0.375,-0.0625}, --NodeBox6
			{-0.25,-0.5,-0.125,-0.375,-0.375,0}, --NodeBox7
			{-0.375,-0.5,-0.0625,-0.5,-0.375,0.0625}, --NodeBox8
			{-0.375,-0.5,0.0625,-0.5,-0.25,0.1875}, --NodeBox9
			{-0.375,-0.5,0.1875,-0.5,-0.125,0.3125}, --NodeBox10
			{-0.375,-0.5,0.3125,-0.5,0,0.4375}, --NodeBox11
			{-0.375,-0.5,0.4375,-0.5,0.125,0.5}, --NodeBox12
			{0.5,-0.5,-0.375,0.375,-0.25,-0.25}, --NodeBox13
			{0.375,-0.5,-0.3125,0.25,-0.25,-0.1875}, --NodeBox14
			{0.25,-0.5,-0.25,0.125,-0.25,-0.125}, --NodeBox15
			{0.125,-0.5,-0.1875,0,-0.25,-0.0625}, --NodeBox16
			{0,-0.5,-0.125,-0.125,-0.25,0}, --NodeBox17
			{-0.125,-0.5,-0.0625,-0.25,-0.25,0.0625}, --NodeBox18
			{-0.25,-0.5,0,-0.375,-0.25,0.125}, --NodeBox19
			{-0.25,-0.5,0.125,-0.375,-0.125,0.25}, --NodeBox20
			{-0.125,-0.5,0.0625,-0.25,-0.125,0.1875}, --NodeBox21
			{0,-0.5,0,-0.125,-0.125,0.125}, --NodeBox22
			{0.125,-0.5,-0.0625,0,-0.125,0.0625}, --NodeBox23
			{0.25,-0.5,-0.125,0.125,-0.125,0}, --NodeBox24
			{0.375,-0.5,-0.1875,0.25,-0.125,-0.0625}, --NodeBox25
			{0.5,-0.5,-0.25,0.375,-0.125,-0.125}, --NodeBox26
			{-0.25,-0.5,0.25,-0.375,0,0.375}, --NodeBox27
			{-0.125,-0.5,0.1875,-0.25,0,0.3125}, --NodeBox28
			{0,-0.5,0.125,-0.125,0,0.25}, --NodeBox29
			{0.125,-0.5,0.0625,0,0,0.1875}, --NodeBox30
			{0.25,-0.5,0,0.125,0,0.125}, --NodeBox31
			{0.375,-0.5,-0.0625,0.25,0,0.0625}, --NodeBox32
			{0.5,-0.5,-0.125,0.375,0,0}, --NodeBox33
			{-0.25,-0.5,0.375,-0.375,0.125,0.5}, --NodeBox34
			{-0.125,-0.5,0.3125,-0.25,0.125,0.4375}, --NodeBox35
			{0,-0.5,0.25,-0.125,0.125,0.375}, --NodeBox36
			{0.125,-0.5,0.1875,0,0.125,0.3125}, --NodeBox37
			{0.25,-0.5,0.125,0.125,0.125,0.25}, --NodeBox38
			{0.375,-0.5,0.0625,0.25,0.125,0.1875}, --NodeBox39
			{0.5,-0.5,0,0.375,0.125,0.125}, --NodeBox40
			{0.5,-0.5,0.125,0.375,0.25,0.25}, --NodeBox41
			{0.375,-0.5,0.1875,0.25,0.25,0.3125}, --NodeBox42
			{0.25,-0.5,0.25,0.125,0.25,0.375}, --NodeBox43
			{0.125,-0.5,0.3125,0,0.25,0.4375}, --NodeBox44
			{0,-0.5,0.375,-0.125,0.25,0.5}, --NodeBox45
			{-0.125,-0.5,0.4375,-0.25,0.25,0.5}, --NodeBox46
			{0.125,-0.5,0.4375,0,0.375,0.5}, --NodeBox47
			{0.25,-0.5,0.375,0.125,0.375,0.5}, --NodeBox48
			{0.375,-0.5,0.3125,0.25,0.375,0.4375}, --NodeBox49
			{0.5,-0.5,0.25,0.375,0.375,0.375}, --NodeBox50
			{0.375,-0.5,0.4375,0.25,0.5,0.5}, --NodeBox51
			{0.5,-0.5,0.375,0.375,0.5,0.5}, --NodeBox52
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallroofonemirror 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- TowerWall Roof 2b
	minetest.register_node("castle:" ..name.. "towerwallrooftwomirror", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof Two Mirror",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,0,0.375,-0.375,0.125}, --NodeBox1
			{0.375,-0.5,0.0625,0.25,-0.375,0.1875}, --NodeBox2
			{0.25,-0.5,0.125,0.125,-0.375,0.25}, --NodeBox3
			{0.125,-0.5,0.1875,0,-0.375,0.3125}, --NodeBox4
			{0,-0.5,0.25,-0.125,-0.375,0.375}, --NodeBox5
			{-0.125,-0.5,0.3125,-0.25,-0.375,0.4375}, --NodeBox6
			{-0.25,-0.5,0.375,-0.375,-0.375,0.5}, --NodeBox7
			{-0.375,-0.5,0.4375,-0.5,-0.375,0.5}, --NodeBox8
			{0.5,-0.5,0.125,0.375,-0.25,0.25}, --NodeBox9
			{0.375,-0.5,0.1875,0.25,-0.25,0.3125}, --NodeBox10
			{0.25,-0.5,0.25,0.125,-0.25,0.375}, --NodeBox11
			{0.125,-0.5,0.3125,0,-0.25,0.4375}, --NodeBox12
			{0,-0.5,0.375,-0.125,-0.25,0.5}, --NodeBox13
			{-0.125,-0.5,0.4375,-0.25,-0.25,0.5}, --NodeBox14
			{0.5,-0.5,0.25,0.375,-0.125,0.375}, --NodeBox15
			{0.375,-0.5,0.3125,0.25,-0.125,0.4375}, --NodeBox16
			{0.25,-0.5,0.375,0.125,-0.125,0.5}, --NodeBox17
			{0.125,-0.5,0.4375,0,-0.125,0.5}, --NodeBox18
			{0.5,-0.5,0.375,0.375,0,0.5}, --NodeBox19
			{0.375,-0.5,0.4375,0.25,0,0.5}, --NodeBox20
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallrooftwomirror 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- 2a TowerWall Roof Bottom
	minetest.register_node("castle:" ..name.. "towerwallroofonebottommirror", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof One Bottom Mirror",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,-0.5,-0.5,0.125,0}, --NodeBox1
			{0.5,0.125,-0.5,0.125,0.5,0}, --NodeBox2
			{0.125,0.125,-0.4375,0,0.5,0}, --NodeBox4
			{0,0.125,-0.375,-0.125,0.5,0}, --NodeBox5
			{-0.125,0.125,-0.3125,-0.25,0.5,0}, --NodeBox6
			{-0.25,0.125,-0.25,-0.375,0.5,0}, --NodeBox7
			{-0.375,0.125,-0.1875,-0.5,0.5,0}, --NodeBox8
			{0.125,0.125,-0.5,0,0.375,-0.4375}, --NodeBox10
			{0,0.125,-0.5,-0.125,0.375,-0.375}, --NodeBox11
			{-0.125,0.125,-0.4375,-0.25,0.375,-0.3125}, --NodeBox12
			{-0.25,0.125,-0.375,-0.375,0.375,-0.25}, --NodeBox13
			{-0.375,0.125,-0.3125,-0.5,0.375,-0.1875}, --NodeBox14
			{0,0.125,-0.5,-0.125,0.25,-0.4375}, --NodeBox15
			{-0.125,0.125,-0.5,-0.25,0.25,-0.4375}, --NodeBox16
			{-0.25,0.125,-0.5,-0.375,0.25,-0.375}, --NodeBox17
			{-0.375,0.125,-0.4375,-0.5,0.25,-0.3125}, --NodeBox18
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallroofonebottommirror 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


	-- Normal TowerWall Roof Bis
	minetest.register_node("castle:" ..name.. "towerwallrooftwobottommirror", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof Two Bottom Mirror",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,-0.125,0.375,0.5,0}, --1
			{0.375,-0.5,-0.0625,0.25,0.5,0.0625}, --2
			{0.25,-0.5,0,0.125,0.5,0.125}, --3
			{0.125,-0.5,0.0625,0,0.5,0.1875}, --4
			{0,-0.5,0.125,-0.125,0.5,0.25}, --5
			{-0.125,-0.5,0.1875,-0.25,0.5,0.3125}, --6
			{-0.25,-0.5,0.25,-0.375,0.5,0.375}, --7
			{-0.375,-0.5,0.3125,-0.5,0.5,0.4375}, --8
			{0.5,-0.5,-0.25,0.375,0.375,-0.125}, --NodeBox9
			{0.5,-0.5,-0.375,0.375,0.25,-0.25}, --NodeBox10
			{0.5,-0.5,-0.5,0.375,0.125,-0.375}, --NodeBox11
			{0.375,-0.5,-0.1875,0.25,0.375,-0.0625}, --NodeBox12
			{0.375,-0.5,-0.3125,0.25,0.25,-0.1875}, --NodeBox13
			{0.375,-0.5,-0.4375,0.25,0.125,-0.3125}, --NodeBox14
			{0.375,-0.5,-0.5,0.25,0,-0.4375}, --NodeBox15********
			{0.25,-0.5,-0.125,0.125,0.375,0}, --NodeBox16
			{0.125,-0.5,-0.0625,0,0.375,0.0625}, --NodeBox17
			{0,-0.5,0,-0.125,0.375,0.125}, --NodeBox18
			{-0.125,-0.5,0.0625,-0.25,0.375,0.1875}, --NodeBox19
			{-0.25,-0.5,0.125,-0.375,0.375,0.25}, --NodeBox20
			{-0.375,-0.5,0.1875,-0.5,0.375,0.3125}, --NodeBox21
			{0.25,-0.5,-0.25,0.125,0.25,-0.125}, --NodeBox22
			{0.125,-0.5,-0.1875,0,0.25,-0.0625}, --NodeBox23
			{0,-0.5,-0.125,-0.125,0.25,0}, --NodeBox24
			{-0.125,-0.5,-0.0625,-0.25,0.25,0.0625}, --NodeBox25
			{-0.25,-0.5,0,-0.375,0.25,0.125}, --NodeBox26
			{-0.375,-0.5,0.0625,-0.5,0.25,0.1875}, --NodeBox27
			{0.25,-0.5,-0.375,0.125,0.125,-0.25}, --NodeBox28
			{0.125,-0.5,-0.3125,0,0.125,-0.1875}, --NodeBox29
			{0,-0.5,-0.25,-0.125,0.125,-0.125}, --NodeBox30
			{-0.125,-0.5,-0.1875,-0.25,0.125,-0.0625}, --NodeBox31
			{-0.25,-0.5,-0.125,-0.375,0.125,0}, --NodeBox32
			{-0.375,-0.5,-0.0625,-0.5,0.125,0.0625}, --NodeBox33
			{0.25,-0.5,-0.5,0.125,0,-0.375}, --NodeBox34
			{0.125,-0.5,-0.4375,0,0,-0.3125}, --NodeBox35
			{0,-0.5,-0.375,-0.125,0,-0.25}, --NodeBox36
			{-0.125,-0.5,-0.3125,-0.25,0,-0.1875}, --NodeBox37
			{-0.25,-0.5,-0.25,-0.375,0,-0.125}, --NodeBox38
			{-0.375,-0.5,-0.1875,-0.5,0,-0.0625}, --NodeBox39
			{0.125,-0.5,-0.5,0,-0.125,-0.4375}, --NodeBox40
			{0,-0.5,-0.5,-0.125,-0.125,-0.375}, --NodeBox41
			{-0.125,-0.5,-0.4375,-0.25,-0.125,-0.3125}, --NodeBox42
			{-0.25,-0.5,-0.375,-0.375,-0.125,-0.25}, --NodeBox43
			{-0.375,-0.5,-0.3125,-0.5,-0.125,-0.1875}, --NodeBox44
			{-0.125,-0.5,-0.5,-0.25,-0.25,-0.4375}, --NodeBox45
			{-0.25,-0.5,-0.5,-0.375,-0.25,-0.375}, --NodeBox46
			{-0.375,-0.5,-0.4375,-0.5,-0.25,-0.3125}, --NodeBox47
			{-0.375,-0.5,-0.5,-0.5,-0.375,-0.4375}, --NodeBox48
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallrooftwobottommirror 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

---------------------------------
---- ROOF TOWER 2AB MIDDLE
---------------------------------
	-- 2a TowerWall Roof Middle
	minetest.register_node("castle:" ..name.. "towerwallroofonemiddle", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof One Middle",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.125,-0.375,0.5,0.125}, --NodeBox1
			{-0.375,-0.5,-0.0625,-0.25,0.5,0.1875}, --NodeBox2
			{-0.25,-0.5,0,-0.125,0.5,0.25}, --NodeBox3
			{-0.125,-0.5,0.0625,0,0.5,0.3125}, --NodeBox4
			{0,-0.5,0.125,0.125,0.5,0.375}, --NodeBox5
			{0.125,-0.5,0.1875,0.25,0.5,0.4375}, --NodeBox6
			{0.25,-0.5,0.25,0.375,0.5,0.5}, --NodeBox7
			{0.375,-0.5,0.3125,0.5,0.5,0.5}, --NodeBox8
			{0.375,-0.5,0.1875,0.5,0.375,0.3125}, --NodeBox9
			{0.375,-0.5,0.0625,0.5,0.25,0.25}, --NodeBox10
			{0.375,-0.5,-0.0625,0.5,0.125,0.0625}, --NodeBox11
			{0.375,-0.5,-0.1875,0.5,0,-0.0625}, --NodeBox12
			{0.375,-0.5,-0.3125,0.5,-0.125,-0.1875}, --NodeBox13
			{0.375,-0.5,-0.4375,0.5,-0.25,-0.3125}, --NodeBox14
			{0.375,-0.5,-0.5,0.5,-0.375,-0.4375}, --NodeBox15
			{-0.5,-0.5,-0.25,-0.375,0.375,-0.125}, --NodeBox16
			{-0.5,-0.5,-0.375,-0.375,0.25,-0.25}, --NodeBox17
			{-0.5,-0.5,-0.5,-0.375,0.125,-0.375}, --NodeBox18
			{-0.5,-0.5,-0.5,-0.375,0,-0.4375}, --00000NodeBox19
			{-0.375,-0.5,-0.1875,-0.25,0.375,-0.0625}, --NodeBox20
			{-0.25,-0.5,-0.125,-0.125,0.375,0}, --NodeBox21
			{-0.125,-0.5,-0.0625,0,0.375,0.0625}, --NodeBox22
			{0,-0.5,0,0.125,0.375,0.125}, --NodeBox23
			{0.125,-0.5,0.0625,0.25,0.375,0.1875}, --NodeBox24
			{0.25,-0.5,0.125,0.375,0.375,0.25}, --NodeBox25
			{-0.375,-0.5,-0.3125,-0.25,0.25,-0.1875}, --NodeBox26
			{-0.25,-0.5,-0.25,-0.125,0.25,-0.125}, --NodeBox27
			{-0.125,-0.5,-0.1875,0,0.25,-0.0625}, --NodeBox28
			{0,-0.5,-0.125,0.125,0.25,0}, --NodeBox29
			{0.125,-0.5,-0.0625,0.25,0.25,0.0625}, --NodeBox30
			{0.25,-0.5,0,0.375,0.25,0.125}, --NodeBox31
			{-0.375,-0.5,-0.4375,-0.25,0.125,-0.3125}, --NodeBox32
			{-0.25,-0.5,-0.375,-0.125,0.125,-0.25}, --NodeBox33
			{-0.125,-0.5,-0.3125,0,0.125,-0.1875}, --NodeBox34
			{0,-0.5,-0.25,0.125,0.125,-0.125}, --NodeBox35
			{0.125,-0.5,-0.1875,0.25,0.125,-0.0625}, --NodeBox36
			{0.25,-0.5,-0.125,0.375,0.125,0}, --NodeBox37
			{-0.375,-0.5,-0.5,-0.25,0,-0.4375}, --NodeBox38
			{-0.25,-0.5,-0.5,-0.125,0,-0.375}, --NodeBox39
			{-0.125,-0.5,-0.4375,0,0,-0.3125}, --NodeBox40
			{0,-0.5,-0.375,0.125,0,-0.25}, --NodeBox41
			{0.125,-0.5,-0.3125,0.25,0,-0.1875}, --NodeBox42
			{0.25,-0.5,-0.25,0.375,0,-0.125}, --NodeBox43
			{-0.375,-0.5,0.4375,-0.25,0.125,0.5}, --00000NodeBox44
			{-0.125,-0.5,-0.5,0,-0.125,-0.4375}, --NodeBox45
			{0,-0.5,-0.5,0.125,-0.125,-0.375}, --NodeBox46
			{0.125,-0.5,-0.4375,0.25,-0.125,-0.3125}, --NodeBox47
			{0.25,-0.5,-0.375,0.375,-0.125,-0.25}, --NodeBox48
			{-0.125,-0.5,0.4375,0,0.25,0.5}, --00000NodeBox49
			{0.125,-0.5,-0.5,0.25,-0.25,-0.4375}, --NodeBox50
			{0.25,-0.5,-0.5,0.375,-0.25,-0.375}, --NodeBox51
			{0.125,-0.5,0.4375,0.25,0.375,0.5}, --00000NodeBox52
			{0,-0.5,0.375,0.125,0.375,0.5}, --NodeBox53
			{-0.125,-0.5,0.3125,0,0.375,0.4375}, --NodeBox54
			{-0.25,-0.5,0.25,-0.125,0.375,0.375}, --NodeBox55
			{-0.375,-0.5,0.1875,-0.25,0.375,0.3125}, --NodeBox56
			{-0.5,-0.5,0.125,-0.375,0.375,0.25}, --NodeBox57
			{-0.25,-0.5,0.375,-0.125,0.25,0.5}, --NodeBox58
			{-0.375,-0.5,0.3125,-0.25,0.25,0.4375}, --NodeBox59
			{-0.5,-0.5,0.25,-0.375,0.25,0.375}, --NodeBox60
			{-0.5,-0.5,0.375,-0.375,0.125,0.5}, --NodeBox61
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallroofonemiddle 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- 2a TowerWall Roof Middle Mirror
	minetest.register_node("castle:" ..name.. "towerwallroofonemiddlemirror", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof One Middle Mirror",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,-0.125,0.375,0.5,0.125}, --NodeBox1
			{0.375,-0.5,-0.0625,0.25,0.5,0.1875}, --NodeBox2
			{0.25,-0.5,0,0.125,0.5,0.25}, --NodeBox3
			{0.125,-0.5,0.0625,-0,0.5,0.3125}, --NodeBox4
			{-0,-0.5,0.125,-0.125,0.5,0.375}, --NodeBox5
			{-0.125,-0.5,0.1875,-0.25,0.5,0.4375}, --NodeBox6
			{-0.25,-0.5,0.25,-0.375,0.5,0.5}, --NodeBox7
			{-0.375,-0.5,0.3125,-0.5,0.5,0.5}, --NodeBox8
			{-0.375,-0.5,0.1875,-0.5,0.375,0.3125}, --NodeBox9
			{-0.375,-0.5,0.0625,-0.5,0.25,0.25}, --NodeBox10
			{-0.375,-0.5,-0.0625,-0.5,0.125,0.0625}, --NodeBox11
			{-0.375,-0.5,-0.1875,-0.5,0,-0.0625}, --NodeBox12
			{-0.375,-0.5,-0.3125,-0.5,-0.125,-0.1875}, --NodeBox13
			{-0.375,-0.5,-0.4375,-0.5,-0.25,-0.3125}, --NodeBox14
			{-0.375,-0.5,-0.5,-0.5,-0.375,-0.4375}, --NodeBox15
			{0.5,-0.5,-0.25,0.375,0.375,-0.125}, --NodeBox16
			{0.5,-0.5,-0.375,0.375,0.25,-0.25}, --NodeBox17
			{0.5,-0.5,-0.5,0.375,0.125,-0.375}, --NodeBox18
			{0.5,-0.5,-0.5,0.375,0,-0.4375}, --00000NodeBox19
			{0.375,-0.5,-0.1875,0.25,0.375,-0.0625}, --NodeBox20
			{0.25,-0.5,-0.125,0.125,0.375,0}, --NodeBox21
			{0.125,-0.5,-0.0625,-0,0.375,0.0625}, --NodeBox22
			{-0,-0.5,0,-0.125,0.375,0.125}, --NodeBox23
			{-0.125,-0.5,0.0625,-0.25,0.375,0.1875}, --NodeBox24
			{-0.25,-0.5,0.125,-0.375,0.375,0.25}, --NodeBox25
			{0.375,-0.5,-0.3125,0.25,0.25,-0.1875}, --NodeBox26
			{0.25,-0.5,-0.25,0.125,0.25,-0.125}, --NodeBox27
			{0.125,-0.5,-0.1875,-0,0.25,-0.0625}, --NodeBox28
			{-0,-0.5,-0.125,-0.125,0.25,0}, --NodeBox29
			{-0.125,-0.5,-0.0625,-0.25,0.25,0.0625}, --NodeBox30
			{-0.25,-0.5,0,-0.375,0.25,0.125}, --NodeBox31
			{0.375,-0.5,-0.4375,0.25,0.125,-0.3125}, --NodeBox32
			{0.25,-0.5,-0.375,0.125,0.125,-0.25}, --NodeBox33
			{0.125,-0.5,-0.3125,-0,0.125,-0.1875}, --NodeBox34
			{-0,-0.5,-0.25,-0.125,0.125,-0.125}, --NodeBox35
			{-0.125,-0.5,-0.1875,-0.25,0.125,-0.0625}, --NodeBox36
			{-0.25,-0.5,-0.125,-0.375,0.125,0}, --NodeBox37
			{0.375,-0.5,-0.5,0.25,0,-0.4375}, --NodeBox38
			{0.25,-0.5,-0.5,0.125,0,-0.375}, --NodeBox39
			{0.125,-0.5,-0.4375,-0,0,-0.3125}, --NodeBox40
			{-0,-0.5,-0.375,-0.125,0,-0.25}, --NodeBox41
			{-0.125,-0.5,-0.3125,-0.25,0,-0.1875}, --NodeBox42
			{-0.25,-0.5,-0.25,-0.375,0,-0.125}, --NodeBox43
			{0.375,-0.5,0.4375,0.25,0.125,0.5}, --00000NodeBox44
			{0.125,-0.5,-0.5,-0,-0.125,-0.4375}, --NodeBox45
			{-0,-0.5,-0.5,-0.125,-0.125,-0.375}, --NodeBox46
			{-0.125,-0.5,-0.4375,-0.25,-0.125,-0.3125}, --NodeBox47
			{-0.25,-0.5,-0.375,-0.375,-0.125,-0.25}, --NodeBox48
			{0.125,-0.5,0.4375,-0,0.25,0.5}, --00000NodeBox49
			{-0.125,-0.5,-0.5,-0.25,-0.25,-0.4375}, --NodeBox50
			{-0.25,-0.5,-0.5,-0.375,-0.25,-0.375}, --NodeBox51
			{-0.125,-0.5,0.4375,-0.25,0.375,0.5}, --00000NodeBox52
			{-0,-0.5,0.375,-0.125,0.375,0.5}, --NodeBox53
			{0.125,-0.5,0.3125,-0,0.375,0.4375}, --NodeBox54
			{0.25,-0.5,0.25,0.125,0.375,0.375}, --NodeBox55
			{0.375,-0.5,0.1875,0.25,0.375,0.3125}, --NodeBox56
			{0.5,-0.5,0.125,0.375,0.375,0.25}, --NodeBox57
			{0.25,-0.5,0.375,0.125,0.25,0.5}, --NodeBox58
			{0.375,-0.5,0.3125,0.25,0.25,0.4375}, --NodeBox59
			{0.5,-0.5,0.25,0.375,0.25,0.375}, --NodeBox60
			{0.5,-0.5,0.375,0.375,0.125,0.5}, --NodeBox61
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwallroofonemiddlemirror 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end



end
