--TRYING

--Top Secret One Side Wall
local top_secret_one_side = {}

top_secret_one_side.types = {
	{"stonewall", "Stonewall", "castle_stonewall", "castle:stonewall"},
	{"cornerwall", "CornerWall", "castle_cornwall", "castle:cornerwall"},
	{"dungeon","Dungeon Stone","castle_dungeon_stone","castle:dungeon_stone"},
}

for _, row in ipairs(top_secret_one_side.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:top_secret_one_side" ..name, {
	    drawtype = "nodebox",
		description = desc.." One Side Top Secret ",
		tiles = {tile..".png"},
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
	output = "castle:top_secret_one_side" ..name.. " 1",
	recipe = {
		{"", "castle:cover_" ..name , ""},
		{"", "", "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:top_secret_one_side" ..name.. " 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end

--Top Secret Corner Side
local top_secret_corner_side = {}

top_secret_corner_side.types = {
	{"stonewall", "Stonewall", "castle_stonewall", "castle:stonewall"},
	{"cornerwall", "CornerWall", "castle_cornwall", "castle:cornerwall"},
	{"dungeon","Dungeon Stone","castle_dungeon_stone","castle:dungeon_stone"},
}

for _, row in ipairs(top_secret_corner_side.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:top_secret_corner_side"..name, {
	    drawtype = "nodebox",
		description = desc.." One Side Top Secret Corner Wall",
		tiles = {tile..".png"},
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
	output = "castle:top_secret_corner_side" ..name.. " 1",
	recipe = {
		{"", "castle:cover_" ..name , "castle:cover_" ..name },
		{"", "", "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:castle:top_secret_corner_side" ..name.. " 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end

--Top Secret Wall
local top_secret_ = {}

top_secret_.types = {
	{"stonewall", "Stonewall", "castle_stonewall", "castle:stonewall"},
	{"cornerwall", "CornerWall", "castle_cornwall", "castle:cornerwall"},
	{"dungeon","Dungeon Stone","castle_dungeon_stone","castle:dungeon_stone"},
}

for _, row in ipairs(top_secret_.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:top_secret_" ..name, {
	    drawtype = "nodebox",
		description = desc.." Top Secret Wall",
		tiles = {tile..".png"},
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
	output = "castle:top_secret_" ..name.. " 1",
	recipe = {
		{"", "castle:cover_" ..name,"" },
		{"castle:cover_" ..name , "", "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:castle:top_secret_" ..name.. " 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end

--Top Secret End Wall
local top_secret_end = {}

top_secret_end.types = {
	{"stonewall", "Stonewall", "castle_stonewall", "castle:stonewall"},
	{"cornerwall", "CornerWall", "castle_cornwall", "castle:cornerwall"},
	{"dungeon","Dungeon Stone","castle_dungeon_stone","castle:dungeon_stone"},
}

for _, row in ipairs(top_secret_end.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:top_secret_end" ..name, {
	    drawtype = "nodebox",
		description = desc.." Top Secret End Wall",
		tiles = {tile..".png"},
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
	output = "castle:top_secret_end" ..name.. " 1",
	recipe = {
		{"", "castle:cover_" ..name,"" },
		{"castle:cover_" ..name , "castle:cover_" ..name, "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:castle:top_secret_end" ..name.. " 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end

--Bottom Secret End Wall
local bottom_secret_end = {}

bottom_secret_end.types = {
	{"stonewall", "Stonewall", "castle_stonewall", "castle:stonewall"},
	{"cornerwall", "CornerWall", "castle_cornwall", "castle:cornerwall"},
	{"dungeon","Dungeon Stone","castle_dungeon_stone","castle:dungeon_stone"},
}

for _, row in ipairs(bottom_secret_end.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:bottom_secret_end" ..name, {
	    drawtype = "nodebox",
		description = desc.." Bottom Secret End Wall",
		tiles = {tile..".png"},
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
	output = "castle:bottom_secret_end" ..name.. " 1",
	recipe = {
		{"", "castle:cover_" ..name,"" },
		{"castle:cover_" ..name , "castle:cover_" ..name, "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:castle:bottom_secret_end" ..name.. " 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end


--Secret wall
local secret_wall_ = {}

secret_wall_.types = {
	{"stonewall", "Stonewall", "castle_stonewall", "castle:stonewall"},
	{"cornerwall", "CornerWall", "castle_cornwall", "castle:cornerwall"},
	{"dungeon","Dungeon Stone","castle_dungeon_stone","castle:dungeon_stone"},
}

for _, row in ipairs(secret_wall_.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:secret_wall_" ..name, {
	    drawtype = "nodebox",
		description = desc.." Secret Wall",
		tiles = {tile..".png"},
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
	output = "castle:secret_wall_" ..name.. " 1",
	recipe = {
		{"castle:cover_" ..name , "", "castle:cover_" ..name },
		{"", "", ""},
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:castle:secret_wall_" ..name.. " 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end

--Secret Corner wall
local secret_corner_wall_ = {}

secret_corner_wall_.types = {
	{"stonewall", "Stonewall", "castle_stonewall", "castle:stonewall"},
	{"cornerwall", "CornerWall", "castle_cornwall", "castle:cornerwall"},
	{"dungeon","Dungeon Stone","castle_dungeon_stone","castle:dungeon_stone"},
}

for _, row in ipairs(secret_corner_wall_.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:secret_corner_wall_" ..name, {
	    drawtype = "nodebox",
		description = desc.." Secret Corner Wall",
		tiles = {tile..".png"},
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
	output = "castle:secret_corner_wall_" ..name.. " 1",
	recipe = {
		{"", "castle:cover_" ..name , "castle:cover_" ..name },
		{"", "", ""},
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:castle:secret_corner_wall_" ..name.. " 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end

--Secret top wall
local top_top_wall_ = {}

top_top_wall_.types = {
	{"stonewall", "Stonewall", "castle_stonewall", "castle:stonewall"},
	{"cornerwall", "CornerWall", "castle_cornwall", "castle:cornerwall"},
	{"dungeon","Dungeon Stone","castle_dungeon_stone","castle:dungeon_stone"},
}

for _, row in ipairs(top_top_wall_.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:top_top_wall_" ..name, {
	    drawtype = "nodebox",
		description = desc.." Secret Top Top Wall",
		tiles = {tile..".png"},
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
	output = "castle:top_top_wall_" ..name.. " 1",
	recipe = {
		{"", "castle:cover_" ..name , ""},
		{"", "", ""},
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:castle:top_top_wall_" ..name.. " 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end

--Secret Stairs
local secret_stairs_ = {}

secret_stairs_.types = {
	{"stonewall", "Stonewall", "castle_stonewall", "castle:stonewall"},
	{"cornerwall", "CornerWall", "castle_cornwall", "castle:cornerwall"},
	{"dungeon","Dungeon Stone","castle_dungeon_stone","castle:dungeon_stone"},
}

for _, row in ipairs(secret_stairs_.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:secret_stairs_" ..name, {
	    drawtype = "nodebox",
		description = desc.." Secret Stair",
		tiles = {tile..".png"},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,-0.5,-0.5,0.4375,0,0},{-0.4375,0,0,0.4375,0.5,0.5}},
		selection_box = {{0.4375,-0.5,-0.5,0.5,0.5,0.5},{-0.5,-0.5,-0.5,-0.4375,0.5,0.5},{-0.4375,-0.5,-0.5,0.4375,0,0},{-0.4375,0,0,0.4375,0.5,0.5}},
		},
	})
minetest.register_craft({
	output = "castle:secret_stairs_" ..name.. " 1",
	recipe = {
		{"", "", ""},
		{"castle:cover_" ..name , "", "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:castle:secret_stairs_" ..name.. " 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end
