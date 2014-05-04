local rooftop = {}

rooftop.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
	
		--FOR ROOF
	{"shingles_asphalt",		"Shingles Asphalt",			"shingles_asphalt.png",			"castle:shingles_asphalt"},
	{"shingles_terracotta",		"Shingles Terracotta",		"shingles_terracotta.png",		"castle:shingles_terracotta"},
	{"shingles_wood",			"Shingles Wood",			"shingles_wood.png",			"castle:shingles_wood"},
		{"castle_straw_bale_reinforced","Straw Bale Reinforced","castle_secret_door_straw_bale_top.png","castle:straw_bale_reinforced"},
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
	{"pavingstone","Paving Stone","castle_pavement_brick.png","castle:pavement"},
--	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
}

--Standart rooftop

for _, row in ipairs(rooftop.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:" ..name.. "rooftop", {
	    drawtype = "nodebox",
		description = desc.." Roof Top  ",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.375,0.5},
			{-0.4375,-0.375,-0.4375,0.4375,-0.25,0.4375},
			{-0.375,-0.25,-0.375,0.375,-0.125,0.375},
			{-0.3125,-0.125,-0.3125,0.3125,0,0.3125},
			{-0.25,0,-0.25,0.25,0.125,0.25},
			{-0.1875,0.125,-0.1875,0.1875,0.25,0.1875},
			{-0.125,0.25,-0.125,0.125,0.375,0.125},
			{-0.0625,0.375,-0.0625,0.0625,0.5,0.0625},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftop 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "rooftopcorner", {
	    drawtype = "nodebox",
		description = desc.." Roof Top  Corner",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.375,0.5},
			{-0.5,-0.375,-0.5,0.375,-0.25,0.375},
			{-0.5,-0.25,-0.5,0.25,-0.125,0.25},
			{-0.5,-0.125,-0.5,0.125,0,0.125},
			{-0.5,0,-0.5,0,0.125,0},
			{-0.5,0.125,-0.5,-0.125,0.25,-0.125},
			{-0.5,0.25,-0.5,-0.25,0.375,-0.25},
			{-0.5,0.375,-0.5,-0.375,0.5,-0.375},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftopcorner 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "rooftopmiddle", {
	    drawtype = "nodebox",
		description = desc.." Roof Top  Middle",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.375,0.5},
			{-0.4375,-0.375,-0.5,0.4375,-0.25,0.375},
			{-0.375,-0.25,-0.5,0.375,-0.125,0.25},
			{-0.3125,-0.125,-0.5,0.3125,0,0.125},
			{-0.25,0,-0.5,0.25,0.125,0},
			{-0.1875,0.125,-0.5,0.1875,0.25,-0.125},
			{-0.125,0.25,-0.5,0.125,0.375,-0.25},
			{-0.0625,0.375,-0.5,0.0625,0.5,-0.375},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftopmiddle 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "rooftopside", {
	    drawtype = "nodebox",
		description = desc.." Roof Top  Side",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.375,0.5},
			{-0.5,-0.375,-0.5,0.375,-0.25,0.5},
			{-0.5,-0.25,-0.5,0.25,-0.125,0.5},
			{-0.5,-0.125,-0.5,0.125,0,0.5},
			{-0.5,0,-0.5,0,0.125,0.5},
			{-0.5,0.125,-0.5,-0.125,0.25,0.5},
			{-0.5,0.25,-0.5,-0.25,0.375,0.5},
			{-0.5,0.375,-0.5,-0.375,0.5,0.5},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftopside 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "rooftopcornerin", {
	    drawtype = "nodebox",
		description = desc.." Roof Top  Corner In",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.375,0.5},
			{-0.5,-0.375,-0.5,0.375,-0.25,0.5},
			{-0.5,-0.25,-0.5,0.25,-0.125,0.5},
			{-0.5,-0.125,-0.5,0.125,0,0.5},
			{-0.5,0,-0.5,0,0.125,0.5},
			{-0.5,0.125,-0.5,-0.125,0.25,0.5},
			{-0.5,0.25,-0.5,-0.25,0.375,0.5},
			{-0.5,0.375,-0.5,-0.375,0.5,0.5},
			{-0.5,0.375,0.375,0.5,0.5,0.5},
			{-0.5,0.25,0.25,0.5,0.375,0.5},
			{-0.5,0.125,0.125,0.5,0.25,0.5},
			{0,0,0,0.5,0.125,0.5},
			{0,-0.125,-0.125,0.5,0,0.5},
			{0.25,-0.25,-0.25,0.5,-0.125,0.5},
			{0.375,-0.375,-0.375,0.5,-0.25,0.5},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftopcornerin 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "rooftopmiddleside", {
	    drawtype = "nodebox",
		description = desc.." Roof Top  Middle Side",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.375,0.5},
			{-0.4375,-0.375,-0.5,0.4375,-0.25,0.5},
			{-0.375,-0.25,-0.5,0.375,-0.125,0.5},
			{-0.3125,-0.125,-0.5,0.3125,0,0.5},
			{-0.25,0,-0.5,0.25,0.125,0.5},
			{-0.1875,0.125,-0.5,0.1875,0.25,0.5},
			{-0.125,0.25,-0.5,0.125,0.375,0.5},
			{-0.0625,0.375,-0.5,0.0625,0.5,0.5},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftopmiddleside 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "rooftopmiddlecross", {
	    drawtype = "nodebox",
		description = desc.." Roof Top  Middle Cross",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.375,0.5},
			{-0.4375,-0.375,-0.5,0.4375,-0.25,0.5},
			{-0.375,-0.25,-0.5,0.375,-0.125,0.5},
			{-0.3125,-0.125,-0.5,0.3125,0,0.5},
			{-0.25,0,-0.5,0.25,0.125,0.5},
			{-0.1875,0.125,-0.5,0.1875,0.25,0.5},
			{-0.125,0.25,-0.5,0.125,0.375,0.5},
			{-0.0625,0.375,-0.5,0.0625,0.5,0.5},
			{-0.5,0.375,-0.0625,0.5,0.5,0.0625},
			{-0.5,0.25,-0.125,0.5,0.375,0.125},
			{-0.5,0.125,-0.1875,0.5,0.25,0.1875},
			{-0.5,0,-0.25,0.5,0.125,0.25},
			{-0.5,-0.125,-0.3125,0.5,0,0.3125},
			{-0.5,-0.25,-0.375,0.5,-0.125,0.375},
			{-0.5,-0.375,-0.4375,0.5,-0.25,0.4375},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftopmiddlecross 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "rooftopmiddlecrossT", {
	    drawtype = "nodebox",
		description = desc.." Roof Top  Middle Cross T",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.375,0.5},
			{-0.4375,-0.375,0,0.4375,-0.25,0.5},
			{-0.375,-0.25,0,0.375,-0.125,0.5},
			{-0.3125,-0.125,0,0.3125,0,0.5},
			{-0.25,0,0,0.25,0.125,0.5},
			{-0.1875,0.125,0,0.1875,0.25,0.5},
			{-0.125,0.25,0,0.125,0.375,0.5},
			{-0.0625,0.375,0,0.0625,0.5,0.5},
			{-0.5,0.375,-0.0625,0.5,0.5,0.0625},
			{-0.5,0.25,-0.125,0.5,0.375,0.125},
			{-0.5,0.125,-0.1875,0.5,0.25,0.1875},
			{-0.5,0,-0.25,0.5,0.125,0.25},
			{-0.5,-0.125,-0.3125,0.5,0,0.3125},
			{-0.5,-0.25,-0.375,0.5,-0.125,0.375},
			{-0.5,-0.375,-0.4375,0.5,-0.25,0.4375},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftopmiddlecrossT 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "rooftopmiddlecrossL", {
	    drawtype = "nodebox",
		description = desc.." Roof Top  Middle Cross L",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.375,0.5},
			{-0.4375,-0.375,0,0.4375,-0.25,0.5},
			{-0.375,-0.25,0,0.375,-0.125,0.5},
			{-0.3125,-0.125,0,0.3125,0,0.5},
			{-0.25,0,0,0.25,0.125,0.5},
			{-0.1875,0.125,0,0.1875,0.25,0.5},
			{-0.125,0.25,0,0.125,0.375,0.5},
			{-0.0625,0.375,0,0.0625,0.5,0.5},
			{-0.5,0.375,-0.0625,0.0625,0.5,0.0625},
			{-0.5,0.25,-0.125,0.125,0.375,0.125},
			{-0.5,0.125,-0.1875,0.1875,0.25,0.1875},
			{-0.5,0,-0.25,0.25,0.125,0.25},
			{-0.5,-0.125,-0.3125,0.3125,0,0.3125},
			{-0.5,-0.25,-0.375,0.375,-0.125,0.375},
			{-0.5,-0.375,-0.4375,0.4375,-0.25,0.4375},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftopmiddlecrossL 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end
end

