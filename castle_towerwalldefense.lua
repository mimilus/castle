local towerwalldefense = {}

towerwalldefense.types = {
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



for _, row in ipairs(towerwalldefense.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]

	-- Top Defense Tower Wall
	minetest.register_node("castle:" ..name.. "normaltowerwalldefensetop", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.375,0,-0.4375}, --NodeBox1
			{-0.5,-0.5,-0.375,-0.25,0,-0.3125}, --NodeBox2
			{-0.375,-0.5,-0.25,-0.125,0,-0.1875}, --NodeBox3
			{-0.25,-0.5,-0.125,0,-0.25,-0.0625}, --NodeBox4
			{0.0625,-0.5,0,0.125,-0.25,0.25}, --NodeBox5--
			{0.1875,-0.5,0.125,0.25,0,0.375}, --NodeBox6
			{0.3125,-0.5,0.25,0.375,0,0.5}, --NodeBox7
			{0.4375,-0.5,0.375,0.5,0,0.5}, --NodeBox8
			{0,-0.5,0,0.0625,-0.25,0.1875}, --NodeBox9----
			{-0.5,-0.5,-0.4375,-0.3125,0,-0.375}, --NodeBox10
			{-0.4375,-0.5,-0.3125,-0.1875,0,-0.25}, --NodeBox11
			{-0.3125,-0.5,-0.1875,-0.0625,-0.25,-0.125}, --NodeBox12
			{-0.1875,-0.5,-0.0625,0.0625,-0.25,0}, --NodeBox13
			{0.125,-0.5,0.0625,0.1875,-0.25,0.3125}, --NodeBox14
			{0.25,-0.5,0.1875,0.3125,0,0.4375}, --NodeBox15
			{0.375,-0.5,0.3125,0.4375,0,0.5}, --NodeBox16
			{-0.0625,-0.5,0,0,-0.25,0.125}, --NodeBox17
			{-0.125,-0.5,0,-0.0625,-0.25,0.0625}, --NodeBox18
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "normaltowerwalldefensetop 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Top Defense Tower Wall
	minetest.register_node("castle:" ..name.. "pillartowerwalldefensetop", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall With Pillar",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.375,0.5,-0.4375}, --NodeBox1
			{-0.5,-0.5,-0.375,-0.25,0,-0.3125}, --NodeBox2
			{-0.375,-0.5,-0.25,-0.125,0,-0.1875}, --NodeBox3
			{-0.25,-0.5,-0.125,0,-0.25,-0.0625}, --NodeBox4
			{0.0625,-0.5,0,0.125,-0.25,0.25}, --NodeBox5--
			{0.1875,-0.5,0.125,0.25,0,0.375}, --NodeBox6
			{0.3125,-0.5,0.25,0.375,0,0.5}, --NodeBox7
			{0.4375,-0.5,0.375,0.5,0.5,0.5}, --NodeBox8
			{0,-0.5,0,0.0625,-0.25,0.1875}, --NodeBox9----
			{-0.5,-0.5,-0.4375,-0.3125,0.5,-0.375}, --NodeBox10
			{-0.4375,-0.5,-0.3125,-0.1875,0,-0.25}, --NodeBox11
			{-0.3125,-0.5,-0.1875,-0.0625,-0.25,-0.125}, --NodeBox12
			{-0.1875,-0.5,-0.0625,0.0625,-0.25,0}, --NodeBox13
			{0.125,-0.5,0.0625,0.1875,-0.25,0.3125}, --NodeBox14
			{0.25,-0.5,0.1875,0.3125,0,0.4375}, --NodeBox15
			{0.375,-0.5,0.3125,0.4375,0.5,0.5}, --NodeBox16
			{-0.0625,-0.5,0,0,-0.25,0.125}, --NodeBox17
			{-0.125,-0.5,0,-0.0625,-0.25,0.0625}, --NodeBox18
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "pillartowerwalldefensetop 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end




	-- Normal Defense Tower Wall
	minetest.register_node("castle:" ..name.. "normaltowerwalldefense", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.375,0.5,-0.4375}, --NodeBox1
			{-0.5,-0.5,-0.375,-0.25,0.5,-0.3125}, --NodeBox2
			{-0.375,-0.5,-0.25,-0.125,0.5,-0.1875}, --NodeBox3
			{-0.25,-0.5,-0.125,0,0.5,-0.0625}, --NodeBox4
			{0.0625,-0.5,0,0.125,0.5,0.25}, --NodeBox5--
			{0.1875,-0.5,0.125,0.25,0.5,0.375}, --NodeBox6
			{0.3125,-0.5,0.25,0.375,0.5,0.5}, --NodeBox7
			{0.4375,-0.5,0.375,0.5,0.5,0.5}, --NodeBox8
			{0,-0.5,0,0.0625,0.5,0.1875}, --NodeBox9----
			{-0.5,-0.5,-0.4375,-0.3125,0.5,-0.375}, --NodeBox10
			{-0.4375,-0.5,-0.3125,-0.1875,0.5,-0.25}, --NodeBox11
			{-0.3125,-0.5,-0.1875,-0.0625,0.5,-0.125}, --NodeBox12
			{-0.1875,-0.5,-0.0625,0.0625,0.5,0}, --NodeBox13
			{0.125,-0.5,0.0625,0.1875,0.5,0.3125}, --NodeBox14
			{0.25,-0.5,0.1875,0.3125,0.5,0.4375}, --NodeBox15
			{0.375,-0.5,0.3125,0.4375,0.5,0.5}, --NodeBox16
			{-0.0625,-0.5,0,0,0.5,0.125}, --NodeBox17
			{-0.125,-0.5,0,-0.0625,0.5,0.0625}, --NodeBox18
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "normaltowerwalldefense 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	-- Normal Defense Tower Wall Slab
	minetest.register_node("castle:" ..name.. "normaltowerwalldefenseslab", {
	    drawtype = "nodebox",
		description = desc.." Top Defense Tower Wall Slab",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.375,0.5,-0.4375}, --NodeBox1
			{-0.5,-0.5,-0.375,-0.25,0.5,-0.3125}, --NodeBox2
			{-0.375,-0.5,-0.25,-0.125,0.5,-0.1875}, --NodeBox3
			{-0.25,-0.5,-0.125,0,0.5,-0.0625}, --NodeBox4
			{0.0625,-0.5,0,0.125,0.5,0.25}, --NodeBox5--
			{0.1875,-0.5,0.125,0.25,0.5,0.375}, --NodeBox6
			{0.3125,-0.5,0.25,0.375,0.5,0.5}, --NodeBox7
			{0.4375,-0.5,0.375,0.5,0.5,0.5}, --NodeBox8
			{0,-0.5,0,0.0625,0.5,0.1875}, --NodeBox9----
			{-0.5,-0.5,-0.4375,-0.3125,0.5,-0.375}, --NodeBox10
			{-0.4375,-0.5,-0.3125,-0.1875,0.5,-0.25}, --NodeBox11
			{-0.3125,-0.5,-0.1875,-0.0625,0.5,-0.125}, --NodeBox12
			{-0.1875,-0.5,-0.0625,0.0625,0.5,0}, --NodeBox13
			{0.125,-0.5,0.0625,0.1875,0.5,0.3125}, --NodeBox14
			{0.25,-0.5,0.1875,0.3125,0.5,0.4375}, --NodeBox15
			{0.375,-0.5,0.3125,0.4375,0.5,0.5}, --NodeBox16
			{-0.0625,-0.5,0,0,0.5,0.125}, --NodeBox17
			{-0.125,-0.5,0,-0.0625,0.5,0.0625}, --NodeBox18
			{0.1875,-0.5,-0.5,0.5,-0.4375,0.375}, --NodeBox19
			{-0.125,-0.5,-0.5,0.1875,-0.4375,0.0625}, --NodeBox20
			{-0.5,-0.5,-0.5,-0.125,-0.4375,-0.3125}, --NodeBox21
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "normaltowerwalldefenseslab 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


-- TowerWall Slab Defense Wall
	minetest.register_node("castle:" ..name.. "towerwalldefensewallslab", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Slab Defense Wall",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.4375,-0.4375,0.5}, --NodeBox1
			{-0.375,-0.5,-0.375,-0.3125,-0.4375,0.5}, --NodeBox2
			{-0.25,-0.5,-0.25,-0.1875,-0.4375,0.5}, --NodeBox3
			{-0.125,-0.5,-0.125,-0.0625,-0.4375,0.5}, --NodeBox4
			{0,-0.5,0,0.0625,-0.4375,0.5}, --NodeBox5
			{0.125,-0.5,0.125,0.1875,-0.4375,0.5}, --NodeBox6
			{0.25,-0.5,0.25,0.3125,-0.4375,0.5}, --NodeBox7
			{0.375,-0.5,0.375,0.4375,-0.4375,0.5}, --NodeBox8
			{-0.4375,-0.5,-0.4375,-0.375,-0.4375,0.5}, --NodeBox9
			{-0.3125,-0.5,-0.3125,-0.25,-0.4375,0.5}, --NodeBox10
			{-0.1875,-0.5,-0.1875,-0.125,-0.4375,0.5}, --NodeBox11
			{-0.0625,-0.5,-0.0625,0,-0.4375,0.5}, --NodeBox12
			{0.0625,-0.5,0.0625,0.125,-0.4375,0.5}, --NodeBox13
			{0.1875,-0.5,0.1875,0.25,-0.4375,0.5}, --NodeBox14
			{0.3125,-0.5,0.3125,0.375,-0.4375,0.5}, --NodeBox15
			{0.4375,-0.5,0.4375,0.5,-0.4375,0.5}, --NodeBox16
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "towerwalldefensewallslab 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

end
