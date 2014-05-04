--TRYING

local secret = {}

secret.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
--	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
	{"dirt","Dirt","default_dirt.png","default:dirt"},
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
	{"tree","Tree","default_tree.png","default:tree"},
--	{"wood","Wood","default_wood.png","default:wood"},
--	{"sand_stone","Sand Stone","default_sandstone.png","default:sandstone"},
--	{"obsidian","Obsidian","default_obsidian.png","default:obsidian"},
--	{"gravel","Gravel","default_gravel.png","default:gravel"},
	{"pavingstone","Paving Stone","castle_pavement_brick.png","castle:pavement"},
--	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
		{"castle_straw_bale","Straw Bale","castle_secret_door_straw_bale_top.png","castle:straw_bale_reinforced"},
}

for _, row in ipairs(secret.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]


--Top Secret One Side Wall
-- Node Definition

	minetest.register_node("castle:"  ..name.. "top_secret_one_side", {
	    drawtype = "nodebox",
		description = desc.." One Side Top Secret ",
		tiles = {tile},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},},
		selection_box={{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},},
		},
	})
minetest.register_craft({
	output = "castle:"  ..name.. "top_secret_one_side 1",
	recipe = {
		{"", "castle:cover_" ..name , ""},
		{"", "", "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:"  ..name.. "top_secret_one_side 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end


--Top Secret Corner Side
-- Node Definition
	
	minetest.register_node("castle:" ..name.. "top_secret_corner_side", {
	    drawtype = "nodebox",
		description = desc.." One Side Top Secret Corner Wall",
		tiles = {tile},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},{0.4375,-0.5,-0.5,0.5,0.5,0.5},},
		selection_box={{-0.5,-0.5,0.4375,0.5,0.5,0.5},{-0.5,0.4375,-0.5,0.5,0.5,0.5},{0.4375,-0.5,-0.5,0.5,0.5,0.5},},
		},
	})
minetest.register_craft({
	output = "castle:" ..name.. "top_secret_corner_side 1",
	recipe = {
		{"", "castle:cover_" ..name , "castle:cover_" ..name },
		{"", "", "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "top_secret_corner_side 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end

--Top Secret Wall
	-- Node Definition
	minetest.register_node("castle:" ..name.. "top_secret_", {
	    drawtype = "nodebox",
		description = desc.." Top Secret Wall",
		tiles = {tile},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,-0.5,0.4375,0.5,0.5},},
		selection_box={{-0.5,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,-0.5,0.4375,0.5,0.5},},
		},
	})
minetest.register_craft({
	output = "castle:" ..name.. "top_secret_ 1",
	recipe = {
		{"", "castle:cover_" ..name,"" },
		{"castle:cover_" ..name , "", "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "top_secret_ 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end

--Top Secret End Wall
-- Node Definition

	minetest.register_node("castle:" ..name.. "top_secret_end", {
	    drawtype = "nodebox",
		description = desc.." Secret End Wall Top",
		tiles = {tile},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{-0.4375,-0.5,0.4375,0.4375,0.5,0.5},{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,-0.5,0.4375,0.5,0.5},},
		selection_box={{-0.4375,-0.5,0.4375,0.4375,0.5,0.5},{-0.5,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,-0.5,0.4375,0.5,0.5},},
		},
	})
minetest.register_craft({
	output = "castle:" ..name.. "top_secret_end",
	recipe = {
		{"", "castle:cover_" ..name,"" },
		{"castle:cover_" ..name , "castle:cover_" ..name, "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "top_secret_end 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end

--Bottom Secret End Wall
-- Node Definition

	minetest.register_node("castle:" ..name.. "bottom_secret_end", {
	    drawtype = "nodebox",
		description = desc.." Bottom Secret End Wall",
		tiles = {tile},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{-0.4375,-0.5,0.4375,0.4375,0.5,0.5},{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},},
		selection_box={{-0.4375,-0.5,0.4375,0.4375,0.5,0.5},{-0.5,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},},
		},
	})
minetest.register_craft({
	output = "castle:" ..name.. "bottom_secret_end 1",
	recipe = {
		{"", "castle:cover_" ..name,"" },
		{"castle:cover_" ..name , "castle:cover_" ..name, "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "bottom_secret_end 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end


--Secret wall
-- Node Definition

	minetest.register_node("castle:" ..name.. "secret_wall_", {
	    drawtype = "nodebox",
		description = desc.." Secret Wall",
		tiles = {tile},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5}},
		selection_box={{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5}},
		},
	})
minetest.register_craft({
	output = "castle:" ..name.. "secret_wall_ 1",
	recipe = {
		{"castle:cover_" ..name , "", "castle:cover_" ..name },
		{"", "", ""},
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "secret_wall_ 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end

--Secret Corner wall
-- Node Definition

	minetest.register_node("castle:" ..name.. "secret_corner_wall_", {
	    drawtype = "nodebox",
		description = desc.." Secret Corner Wall",
		tiles = {tile},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,0.4375,0.5,0.5,0.5}},
		selection_box={{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,0.4375,0.5,0.5,0.5}},
		},
	})
minetest.register_craft({
	output = "castle:" ..name.. "secret_corner_wall_ 1",
	recipe = {
		{"", "castle:cover_" ..name , "castle:cover_" ..name },
		{"", "", ""},
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "secret_corner_wall_ 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end

--Secret top wall
-- Node Definition

	minetest.register_node("castle:" ..name.. "top_top_wall_", {
	    drawtype = "nodebox",
		description = desc.." Secret Top Top Wall",
		tiles = {tile},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {-0.5,0.4375,-0.5,0.5,0.5,0.5},
		selection_box={-0.5,0.4375,-0.5,0.5,0.5,0.5},
		},
	})
minetest.register_craft({
	output = "castle:" ..name.. "top_top_wall_ 1",
	recipe = {
		{"", "castle:cover_" ..name , ""},
		{"", "", ""},
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "top_top_wall_ 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end

--Secret Stairs
-- Node Definition

	minetest.register_node("castle:" ..name.. "secret_stairs_", {
	    drawtype = "nodebox",
		description = desc.." Secret Stair",
		tiles = {tile},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,0,0.4375,0.5,0.5},{-0.4375,-0.0625,-0.5,0.4375,0,0},{-0.4375,-0.5,-0.5,0.4375,-0.0625,-0.4375},{-0.4375,0,0,0.4375,0.4375,0.0625}},
		selection_box = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,0,0.4375,0.5,0.5},{-0.4375,-0.0625,-0.5,0.4375,0,0},{-0.4375,-0.5,-0.5,0.4375,-0.0625,-0.4375},{-0.4375,0,0,0.4375,0.4375,0.0625}},
		},
	})
minetest.register_craft({
	output = "castle:" ..name.. "secret_stairs_ 1",
	recipe = {
		{"", "", ""},
		{"castle:cover_" ..name , "", "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "secret_stairs_ 1",
			recipe = {
			{"",craft_material, "" },
			{craft_material,craft_material, craft_material},
			{craft_material,craft_material, ""} },
		})
	end

--Super Secret Stairs
-- Node Definition

	minetest.register_node("castle:" ..name.. "super_secret_stairs_", {
	    drawtype = "nodebox",
		description = desc.." Super Secret Stair",
		tiles = {tile},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,0,0.4375,0.5,0.4375},{-0.4375,-0.0625,-0.5,0.4375,0,0},{-0.4375,-0.5,-0.5,0.4375,-0.0625,-0.4375},{-0.4375,0,0,0.4375,0.4375,0.0625},{-0.4375,-0.5,0.4375,0.4375,0.5,0.5}},
		selection_box = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,0.4375,0,0.4375,0.5,0.4375},{-0.4375,-0.0625,-0.5,0.4375,0,0},{-0.4375,-0.5,-0.5,0.4375,-0.0625,-0.4375},{-0.4375,0,0,0.4375,0.4375,0.0625},{-0.4375,-0.5,0.4375,0.4375,0.5,0.5}},
		},
	})
minetest.register_craft({
	output = "castle:" ..name.. "super_secret_stairs_ 1",
	recipe = {
		{"", "castle:cover_" ..name , ""},
		{"castle:cover_" ..name , "castle:cover_" ..name , "castle:cover_" ..name },
		{"castle:cover_" ..name , "castle:cover_" ..name , "castle:cover_" ..name },
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "super_secret_stairs_ 1",
			recipe = {
			{"",craft_material, "" },
			{craft_material,craft_material, craft_material},
			{craft_material,craft_material, craft_material} },
		})
	end
end
