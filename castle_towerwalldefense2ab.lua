local towerwalldefense2ab = {}

towerwalldefense2ab.types = {
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



for _, row in ipairs(towerwalldefense2ab.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]

----------------------------------
--Standart defense towerwall 2ab--
----------------------------------

	-- Defense Tower Wall Part One
	minetest.register_node("castle:" ..name.. "towerwalldefensepartoneslab", {
	    drawtype = "nodebox",
		description = desc.." Defense Tower Wall Part One with Slab",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.375,0.5,-0.375}, --NodeBox1
			{-0.375,-0.5,-0.4375,-0.25,0.5,-0.3125}, --NodeBox2
			{-0.25,-0.5,-0.375,-0.125,0.5,-0.25}, --NodeBox3
			{-0.125,-0.5,-0.3125,0,0.5,-0.1875}, --NodeBox4
			{0,-0.5,-0.25,0.125,0.5,-0.125}, --NodeBox5
			{0.125,-0.5,-0.1875,0.25,0.5,-0.0625}, --NodeBox6
			{0.25,-0.5,-0.125,0.375,0.5,0}, --NodeBox7
			{0.375,-0.5,-0.0625,0.5,0.5,0.0625}, --NodeBox8
			{-0.5,-0.5,-0.375,-0.125,-0.4375,0.5}, --slab
			{-0.125,-0.5,-0.1875,0.25,-0.4375,0.5}, --slab2
			{0.25,-0.5,-0.0625,0.5,-0.4375,0.5}, --slab3
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefensepartoneslab 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Defense Tower Wall Part One
	minetest.register_node("castle:" ..name.. "towerwalldefensepartone", {
	    drawtype = "nodebox",
		description = desc.." Defense Tower Wall Part One",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.375,0.5,-0.375}, --NodeBox1
			{-0.375,-0.5,-0.4375,-0.25,0.5,-0.3125}, --NodeBox2
			{-0.25,-0.5,-0.375,-0.125,0.5,-0.25}, --NodeBox3
			{-0.125,-0.5,-0.3125,0,0.5,-0.1875}, --NodeBox4
			{0,-0.5,-0.25,0.125,0.5,-0.125}, --NodeBox5
			{0.125,-0.5,-0.1875,0.25,0.5,-0.0625}, --NodeBox6
			{0.25,-0.5,-0.125,0.375,0.5,0}, --NodeBox7
			{0.375,-0.5,-0.0625,0.5,0.5,0.0625}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefensepartone 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Defense Tower Wall Part Two
	minetest.register_node("castle:" ..name.. "towerwalldefenseparttwo", {
	    drawtype = "nodebox",
		description = desc.." Defense Tower Wall Part Two",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,0,-0.375,0.5,0.125}, --NodeBox1
			{-0.375,-0.5,0.0625,-0.25,0.5,0.1875}, --NodeBox2
			{-0.25,-0.5,0.125,-0.125,0.5,0.25}, --NodeBox3
			{-0.125,-0.5,0.1875,0,0.5,0.3125}, --NodeBox4
			{0,-0.5,0.25,0.125,0.5,0.375}, --NodeBox5
			{0.125,-0.5,0.3125,0.25,0.5,0.4375}, --NodeBox6
			{0.25,-0.5,0.375,0.375,0.5,0.5}, --NodeBox7
			{0.375,-0.5,0.4375,0.5,0.5,0.5}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefenseparttwo 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Defense Tower Wall Part Two
	minetest.register_node("castle:" ..name.. "towerwalldefenseparttwoslab", {
	    drawtype = "nodebox",
		description = desc.." Defense Tower Wall Part Two with Slab",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,0,-0.375,0.5,0.125}, --NodeBox1
			{-0.375,-0.5,0.0625,-0.25,0.5,0.1875}, --NodeBox2
			{-0.25,-0.5,0.125,-0.125,0.5,0.25}, --NodeBox3
			{-0.125,-0.5,0.1875,0,0.5,0.3125}, --NodeBox4
			{0,-0.5,0.25,0.125,0.5,0.375}, --NodeBox5
			{0.125,-0.5,0.3125,0.25,0.5,0.4375}, --NodeBox6
			{0.25,-0.5,0.375,0.375,0.5,0.5}, --NodeBox7
			{0.375,-0.5,0.4375,0.5,0.5,0.5}, --NodeBox8
			{0,-0.5,0.375,0.375,-0.4375,0.5}, --slab1
			{-0.5,-0.5,0.125,-0.1875,-0.4375,0.5}, --slab2
			{-0.1875,-0.5,0.25,0,-0.4375,0.5}, --slab3
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefenseparttwoslab 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


----------------------------------------------------------
------------MIRROR DEFENSE WALL 2ab
----------------------------------------------------------

----------------------------------
--Standart defense towerwall 2ab Mirror--
----------------------------------

	-- Defense Tower Wall Part Two
	minetest.register_node("castle:" ..name.. "towerwalldefenseparttwoslabmirror", {
	    drawtype = "nodebox",
		description = desc.." Defense Tower Wall Part Two with Slab Mirror",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,0,0.375,0.5,0.125}, --NodeBox1
			{0.375,-0.5,0.0625,0.25,0.5,0.1875}, --NodeBox2
			{0.25,-0.5,0.125,0.125,0.5,0.25}, --NodeBox3
			{0.125,-0.5,0.1875,0,0.5,0.3125}, --NodeBox4
			{0,-0.5,0.25,-0.125,0.5,0.375}, --NodeBox5
			{-0.125,-0.5,0.3125,-0.25,0.5,0.4375}, --NodeBox6
			{-0.25,-0.5,0.375,-0.375,0.5,0.5}, --NodeBox7
			{-0.375,-0.5,0.4375,-0.5,0.5,0.5}, --NodeBox8
			{-0,-0.5,0.375,-0.375,-0.4375,0.5}, --slab1
			{0.5,-0.5,0.125,0.1875,-0.4375,0.5}, --slab2
			{0.1875,-0.5,0.25,0,-0.4375,0.5}, --slab3
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefenseparttwoslabmirror 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Defense Tower Wall Part One
	minetest.register_node("castle:" ..name.. "towerwalldefensepartoneslabmirror", {
	    drawtype = "nodebox",
		description = desc.." Defense Tower Wall Part One with Slab Mirror",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,-0.5,0.375,0.5,-0.375}, --NodeBox1
			{0.375,-0.5,-0.4375,0.25,0.5,-0.3125}, --NodeBox2
			{0.25,-0.5,-0.375,0.125,0.5,-0.25}, --NodeBox3
			{0.125,-0.5,-0.3125,0,0.5,-0.1875}, --NodeBox4
			{0,-0.5,-0.25,-0.125,0.5,-0.125}, --NodeBox5
			{-0.125,-0.5,-0.1875,-0.25,0.5,-0.0625}, --NodeBox6
			{-0.25,-0.5,-0.125,-0.375,0.5,0}, --NodeBox7
			{-0.375,-0.5,-0.0625,-0.5,0.5,0.0625}, --NodeBox8
			{0.5,-0.5,-0.375,0.125,-0.4375,0.5}, --slab
			{0.125,-0.5,-0.1875,-0.25,-0.4375,0.5}, --slab2
			{-0.25,-0.5,-0.0625,-0.5,-0.4375,0.5}, --slab3
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefensepartoneslabmirror 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Defense Tower Wall Part One
	minetest.register_node("castle:" ..name.. "towerwalldefensepartonemirror", {
	    drawtype = "nodebox",
		description = desc.." Defense Tower Wall Part One Mirror",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,-0.5,0.375,0.5,-0.375}, --NodeBox1
			{0.375,-0.5,-0.4375,0.25,0.5,-0.3125}, --NodeBox2
			{0.25,-0.5,-0.375,0.125,0.5,-0.25}, --NodeBox3
			{0.125,-0.5,-0.3125,0,0.5,-0.1875}, --NodeBox4
			{-0,-0.5,-0.25,-0.125,0.5,-0.125}, --NodeBox5
			{-0.125,-0.5,-0.1875,-0.25,0.5,-0.0625}, --NodeBox6
			{-0.25,-0.5,-0.125,-0.375,0.5,0}, --NodeBox7
			{-0.375,-0.5,-0.0625,-0.5,0.5,0.0625}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefensepartonemirror 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Defense Tower Wall Part Two
	minetest.register_node("castle:" ..name.. "towerwalldefenseparttwomirror", {
	    drawtype = "nodebox",
		description = desc.." Defense Tower Wall Part Two Mirror",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,0,0.375,0.5,0.125}, --NodeBox1
			{0.375,-0.5,0.0625,0.25,0.5,0.1875}, --NodeBox2
			{0.25,-0.5,0.125,0.125,0.5,0.25}, --NodeBox3
			{0.125,-0.5,0.1875,0,0.5,0.3125}, --NodeBox4
			{0,-0.5,0.25,-0.125,0.5,0.375}, --NodeBox5
			{-0.125,-0.5,0.3125,-0.25,0.5,0.4375}, --NodeBox6
			{-0.25,-0.5,0.375,-0.375,0.5,0.5}, --NodeBox7
			{-0.375,-0.5,0.4375,-0.5,0.5,0.5}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefenseparttwomirror 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end



-----------------------------
--Top Defense Towerwall 2ab--
-----------------------------

	-- Top Defense Tower Wall Part One Top
	minetest.register_node("castle:" ..name.. "towerwalldefensepartonetop", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall Part One",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.375,0,-0.375}, --NodeBox1
			{-0.375,-0.5,-0.4375,-0.25,0,-0.3125}, --NodeBox2
			{-0.25,-0.5,-0.375,-0.125,-0.25,-0.25}, --NodeBox3
			{-0.125,-0.5,-0.3125,0,-0.25,-0.1875}, --NodeBox4
			{0,-0.5,-0.25,0.125,-0.25,-0.125}, --NodeBox5
			{0.125,-0.5,-0.1875,0.25,-0.25,-0.0625}, --NodeBox6
			{0.25,-0.5,-0.125,0.375,0,0}, --NodeBox7
			{0.375,-0.5,-0.0625,0.5,0,0.0625}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefensepartonetop 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Top Defense Tower Wall Part Two Top
	minetest.register_node("castle:" ..name.. "towerwalldefenseparttwotop", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall Part Two",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,0,-0.375,0,0.125}, --NodeBox1
			{-0.375,-0.5,0.0625,-0.25,0,0.1875}, --NodeBox2
			{-0.25,-0.5,0.125,-0.125,-0.25,0.25}, --NodeBox3
			{-0.125,-0.5,0.1875,0,-0.25,0.3125}, --NodeBox4
			{0,-0.5,0.25,0.125,-0.25,0.375}, --NodeBox5
			{0.125,-0.5,0.3125,0.25,-0.25,0.4375}, --NodeBox6
			{0.25,-0.5,0.375,0.375,0,0.5}, --NodeBox7
			{0.375,-0.5,0.4375,0.5,0,0.5}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefenseparttwotop 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


--------------------------------------------------
--
--MIRROR TOP DEFENSE TOWER WALL
--
---------------------------------------------------

-----------------------------
--Top Defense Towerwall 2ab--
-----------------------------

	-- Top Defense Tower Wall Part One Top
	minetest.register_node("castle:" ..name.. "towerwalldefensepartonetopmirror", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall Part One Mirror",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,-0.5,0.375,0,-0.375}, --NodeBox1
			{0.375,-0.5,-0.4375,0.25,0,-0.3125}, --NodeBox2
			{0.25,-0.5,-0.375,0.125,-0.25,-0.25}, --NodeBox3
			{0.125,-0.5,-0.3125,0,-0.25,-0.1875}, --NodeBox4
			{0,-0.5,-0.25,-0.125,-0.25,-0.125}, --NodeBox5
			{-0.125,-0.5,-0.1875,-0.25,-0.25,-0.0625}, --NodeBox6
			{-0.25,-0.5,-0.125,-0.375,0,0}, --NodeBox7
			{-0.375,-0.5,-0.0625,-0.5,0,0.0625}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefensepartonetopmirror 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Top Defense Tower Wall Part Two Top
	minetest.register_node("castle:" ..name.. "towerwalldefenseparttwotopmirror", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall Part Two Mirror",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,0,0.375,0,0.125}, --NodeBox1
			{0.375,-0.5,0.0625,0.25,0,0.1875}, --NodeBox2
			{0.25,-0.5,0.125,0.125,-0.25,0.25}, --NodeBox3
			{0.125,-0.5,0.1875,0,-0.25,0.3125}, --NodeBox4
			{0,-0.5,0.25,-0.125,-0.25,0.375}, --NodeBox5
			{-0.125,-0.5,0.3125,-0.25,-0.25,0.4375}, --NodeBox6
			{-0.25,-0.5,0.375,-0.375,0,0.5}, --NodeBox7
			{-0.375,-0.5,0.4375,-0.5,0,0.5}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefenseparttwotopmirror 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end
















-----------------------------
--Top Defense Towerwall Pillar 2ab--
-----------------------------

	-- Top Defense Tower Wall Part One Top Pillar
	minetest.register_node("castle:" ..name.. "towerwalldefensepartonetoppillar", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall Part One Pillar",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.375,0.5,-0.375}, --NodeBox1
			{-0.375,-0.5,-0.4375,-0.25,0,-0.3125}, --NodeBox2
			{-0.25,-0.5,-0.375,-0.125,-0.25,-0.25}, --NodeBox3
			{-0.125,-0.5,-0.3125,0,-0.25,-0.1875}, --NodeBox4
			{0,-0.5,-0.25,0.125,-0.25,-0.125}, --NodeBox5
			{0.125,-0.5,-0.1875,0.25,-0.25,-0.0625}, --NodeBox6
			{0.25,-0.5,-0.125,0.375,0,0}, --NodeBox7
			{0.375,-0.5,-0.0625,0.5,0.5,0.0625}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefensepartonetoppillar 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Top Defense Tower Wall Part Two Top Pillar
	minetest.register_node("castle:" ..name.. "towerwalldefenseparttwotoppillar", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall Part Two Pillar",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,0,-0.375,0.5,0.125}, --NodeBox1
			{-0.375,-0.5,0.0625,-0.25,0,0.1875}, --NodeBox2
			{-0.25,-0.5,0.125,-0.125,-0.25,0.25}, --NodeBox3
			{-0.125,-0.5,0.1875,0,-0.25,0.3125}, --NodeBox4
			{0,-0.5,0.25,0.125,-0.25,0.375}, --NodeBox5
			{0.125,-0.5,0.3125,0.25,-0.25,0.4375}, --NodeBox6
			{0.25,-0.5,0.375,0.375,0,0.5}, --NodeBox7
			{0.375,-0.5,0.4375,0.5,0.5,0.5}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefenseparttwotoppillar 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


--------------------------------------------------
--
--MIRROR TOP DEFENSE TOWER WALL PILLAR
--
---------------------------------------------------

-----------------------------
--Top Defense Towerwall 2ab--
-----------------------------

	-- Top Defense Tower Wall Part One Top Pillar
	minetest.register_node("castle:" ..name.. "towerwalldefensepartonetopmirrorpillar", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall Part One Mirror Pillar",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,-0.5,0.375,0.5,-0.375}, --NodeBox1
			{0.375,-0.5,-0.4375,0.25,0,-0.3125}, --NodeBox2
			{0.25,-0.5,-0.375,0.125,-0.25,-0.25}, --NodeBox3
			{0.125,-0.5,-0.3125,0,-0.25,-0.1875}, --NodeBox4
			{0,-0.5,-0.25,-0.125,-0.25,-0.125}, --NodeBox5
			{-0.125,-0.5,-0.1875,-0.25,-0.25,-0.0625}, --NodeBox6
			{-0.25,-0.5,-0.125,-0.375,0,0}, --NodeBox7
			{-0.375,-0.5,-0.0625,-0.5,0.5,0.0625}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefensepartonetopmirrorpillar 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Top Defense Tower Wall Part Two Top Pillar
	minetest.register_node("castle:" ..name.. "towerwalldefenseparttwotopmirrorpillar", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall Part Two Mirror Pillar",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5,-0.5,0,0.375,0.5,0.125}, --NodeBox1
			{0.375,-0.5,0.0625,0.25,0,0.1875}, --NodeBox2
			{0.25,-0.5,0.125,0.125,-0.25,0.25}, --NodeBox3
			{0.125,-0.5,0.1875,0,-0.25,0.3125}, --NodeBox4
			{0,-0.5,0.25,-0.125,-0.25,0.375}, --NodeBox5
			{-0.125,-0.5,0.3125,-0.25,-0.25,0.4375}, --NodeBox6
			{-0.25,-0.5,0.375,-0.375,0,0.5}, --NodeBox7
			{-0.375,-0.5,0.4375,-0.5,0.5,0.5}, --NodeBox8
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefenseparttwotopmirrorpillar 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


end
