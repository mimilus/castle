local rooftoplow = {}

rooftoplow.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
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

--Standart rooftoplow

for _, row in ipairs(rooftoplow.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:" ..name.. "rooftop_low", {
	    drawtype = "nodebox",
		description = desc.." Roof Top Low ",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.4375,0.5},
			{-0.4375,-0.4375,-0.4375,0.4375,-0.375,0.4375},
			{-0.375,-0.375,-0.375,0.375,-0.3125,0.375},
			{-0.3125,-0.3125,-0.3125,0.3125,-0.25,0.3125},
			{-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
			{-0.1875,-0.1875,-0.1875,0.1875,-0.125,0.1875},
			{-0.125,-0.125,-0.125,0.125,-0.0625,0.125},
			{-0.0625,-0.0625,-0.0625,0.0625,0,0.0625},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftop_low 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "rooftop_lowcorner", {
	    drawtype = "nodebox",
		description = desc.." Roof Top Low Corner",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.4375,0.5},
			{-0.5,-0.4375,-0.375,0.375,-0.375,0.5},
			{-0.5,-0.375,-0.25,0.25,-0.3125,0.5},
			{-0.5,-0.3125,-0.125,0.125,-0.25,0.5},
			{-0.5,-0.25,0,0,-0.1875,0.5},
			{-0.5,-0.1875,0.125,-0.125,-0.125,0.5},
			{-0.5,-0.125,0.25,-0.25,-0.0625,0.5},
			{-0.5,-0.0625,0.375,-0.375,-0,0.5},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftop_lowcorner 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "rooftop_lowmiddle", {
	    drawtype = "nodebox",
		description = desc.." Roof Top Low Middle",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.4375,0.5},
			{-0.5,-0.4375,-0.4375,0.375,-0.375,0.4375},
			{-0.5,-0.375,-0.375,0.25,-0.3125,0.375},
			{-0.5,-0.3125,-0.3125,0.125,-0.25,0.3125},
			{-0.5,-0.25,-0.25,0,-0.1875,0.25},
			{-0.5,-0.1875,-0.1875,-0.125,-0.125,0.1875},
			{-0.5,-0.125,-0.125,-0.25,-0.0625,0.125},
			{-0.5,-0.0625,-0.0625,-0.375,-0,0.0625},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftop_lowmiddle 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "rooftop_lowside", {
	    drawtype = "nodebox",
		description = desc.." Roof Top Low Side",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.4375,0.5},
			{-0.5,-0.4375,-0.5,0.375,-0.375,0.5},
			{-0.5,-0.375,-0.5,0.25,-0.3125,0.5},
			{-0.5,-0.3125,-0.5,0.125,-0.25,0.5},
			{-0.5,-0.25,-0.5,0,-0.1875,0.5},
			{-0.5,-0.1875,-0.5,-0.125,-0.125,0.5},
			{-0.5,-0.125,-0.5,-0.25,-0.0625,0.5},
			{-0.5,-0.0625,-0.5,-0.375,-0,0.5},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftop_lowside 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "rooftop_lowcornerin", {
	    drawtype = "nodebox",
		description = desc.." Roof Top Low Corner In",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.4375,0.5},
			{-0.5,-0.4375,-0.375,0.5,-0.375,0.5},
			{-0.5,-0.375,-0.25,0.5,-0.3125,0.5},
			{-0.5,-0.3125,-0.125,0.5,-0.25,0.5},
			{-0.5,-0.25,0,0.5,-0.1875,0.5},
			{-0.5,-0.1875,0.125,0.5,-0.125,0.5},
			{-0.5,-0.125,0.25,0.5,-0.0625,0.5}, 
			{-0.5,-0.0625,0.375,0.479598,-0,0.5},
			{-0.5,-0.4375,-0.5,0.375,-0.375,-0.375},
			{-0.5,-0.375,-0.5,0.25,-0.3125,-0.25},
			{-0.5,-0.3125,-0.5,0.125,-0.25,-0.125},
			{-0.5,-0.25,-0.5,0,-0.1875,0},
			{-0.5,-0.1875,-0.5,-0.125,-0.125,0.125},
			{-0.5,-0.125,-0.5,-0.25,-0.0625,0.3125},
			{-0.5,-0.0625,-0.5,-0.375,0,0.375},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftop_lowcornerin 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "rooftop_lowmiddleside", {
	    drawtype = "nodebox",
		description = desc.." Roof Top Low Middle Side",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.4375,0.5},
			{-0.5,-0.4375,-0.4375,0.5,-0.375,0.4375},
			{-0.5,-0.375,-0.375,0.5,-0.3125,0.375},
			{-0.5,-0.3125,-0.3125,0.5,-0.25,0.3125},
			{-0.5,-0.25,-0.25,0.5,-0.1875,0.25},
			{-0.5,-0.1875,-0.1875,0.5,-0.125,0.1875},
			{-0.5,-0.125,-0.125,0.5,-0.0625,0.125},
			{-0.5,-0.0625,-0.0625,0.5,-0,0.0625},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftop_lowmiddleside 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "rooftop_lowmiddlecross", {
	    drawtype = "nodebox",
		description = desc.." Roof Top Low Middle Cross",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.4375,0.5},
			{-0.5,-0.4375,-0.4375,0.5,-0.375,0.4375},
			{-0.5,-0.375,-0.375,0.5,-0.3125,0.375},
			{-0.5,-0.3125,-0.3125,0.5,-0.25,0.3125},
			{-0.5,-0.25,-0.25,0.5,-0.1875,0.25},
			{-0.5,-0.1875,-0.1875,0.5,-0.125,0.1875},
			{-0.5,-0.125,-0.125,0.5,-0.0625,0.125},
			{-0.5,-0.0625,-0.0625,0.5,-0,0.0625},
			{-0.4375,-0.4375,-0.5,0.4375,-0.375,0.5},
			{-0.375,-0.375,-0.5,0.375,-0.3125,0.5},
			{-0.3125,-0.3125,-0.5,0.3125,-0.25,0.5},
			{-0.25,-0.25,-0.5,0.25,-0.1875,0.5},
			{-0.1875,-0.1875,-0.5,0.1875,-0.125,0.5},
			{-0.125,-0.125,-0.5,0.125,-0.0625,0.5},
			{-0.0625,-0.0625,-0.5,0.0625,0,0.5},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftop_lowmiddlecross 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "rooftop_lowmiddlecrossT", {
	    drawtype = "nodebox",
		description = desc.." Roof Top Low Middle Cross T",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.4375,0.5},
			{-0.5,-0.4375,-0.4375,0.5,-0.375,0.4375},
			{-0.5,-0.375,-0.375,0.5,-0.3125,0.375},
			{-0.5,-0.3125,-0.3125,0.5,-0.25,0.3125},
			{-0.5,-0.25,-0.25,0.5,-0.1875,0.25},
			{-0.5,-0.1875,-0.1875,0.5,-0.125,0.1875},
			{-0.5,-0.125,-0.125,0.5,-0.0625,0.125},
			{-0.5,-0.0625,-0.0625,0.5,-0,0.0625},
			{-0.4375,-0.4375,0,0.4375,-0.375,0.5},
			{-0.375,-0.375,0,0.375,-0.3125,0.5},
			{-0.3125,-0.3125,0,0.3125,-0.25,0.5}, 
			{-0.25,-0.25,0,0.25,-0.1875,0.5},
			{-0.1875,-0.1875,0,0.1875,-0.125,0.5},
			{-0.125,-0.125,0,0.125,-0.0625,0.5},
			{-0.0625,-0.0625,0,0.0625,0,0.5},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftop_lowmiddlecrossT 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "rooftop_lowmiddlecrossL", {
	    drawtype = "nodebox",
		description = desc.." Roof Top Low Middle Cross L",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.4375,0.5},
			{-0.5,-0.4375,-0.4375,0.44027,-0.375,0.4375},
			{-0.5,-0.375,-0.375,0.375,-0.3125,0.375},
			{-0.5,-0.3125,-0.3125,0.3125,-0.25,0.3125},
			{-0.5,-0.25,-0.25,0.25,-0.1875,0.25},
			{-0.5,-0.1875,-0.1875,0.1875,-0.125,0.1875},
			{-0.5,-0.125,-0.125,0.125,-0.0625,0.125},
			{-0.5,-0.0625,-0.0625,0.0625,-0,0.0625},
			{-0.4375,-0.4375,0,0.4375,-0.375,0.5},
			{-0.375,-0.375,0,0.375,-0.3125,0.5},
			{-0.3125,-0.3125,0,0.3125,-0.25,0.5},
			{-0.25,-0.25,0,0.25,-0.1875,0.5},
			{-0.1875,-0.1875,0,0.1875,-0.125,0.5},
			{-0.125,-0.125,0,0.125,-0.0625,0.5},
			{-0.0625,-0.0625,0,0.0625,0,0.5},
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "rooftop_lowmiddlecrossL 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end
end

