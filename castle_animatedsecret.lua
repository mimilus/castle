--TRYING

local secret = {}

secret.types = {

		{"_leaves",					" Leaves",							"default_leaves.png",					"default:default_leaves",				"castle_animated_default_leaves.png",			7.5},
--		{"_water_transparent2",		" Transparent  Water 2",			"castle_water_flowing2_inv.png",		"default:water_flowing",				"castle_water_flowing_animated2.png",			0.8},
--		{"_water_transparent1",		" Transparent  Water 1",			"castle_water_flowing1_inv.png",		"default:water_flowing",				"castle_water_flowing_animated1.png",			0.8},
		{"_water_transparent",		" Transparent  Water",				"castle_water_flowing_inv.png",			"default:water_flowing",				"castle_water_flowing_animated.png",			0.8},
--		{"_mud",					" Mud",								"castle_cover_inv_mud.png",				"default:water_flowing",				"castle_mud_flowing_animated.png",				0.8},
		{"_mud2",					" Mud 2",							"castle_cover_inv_mud1.png",			"default:water_flowing",				"castle_mud_flowing_animated1.png",				0.8},
--		{"_mud_dirt",				" Mud Dirt",						"castle_cover_inv_dirt_mud.png",		"default:water_flowing",				"castle_dirtmud_flowing_animated.png",			0.8},
--		{"_mud_dirt_2",				" Mud Dirt 2",						"castle_cover_inv_dirt_mud2.png",		"default:water_flowing",				"castle_dirtmud_flowing_animated2.png",			0.8},

}

for _, row in ipairs(secret.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	local animtile = row [5]
	local speed = row [6]


--Top Secret One Side Wall
-- Node Definition

	minetest.register_node("castle:"  ..name.. "top_secret_one_side", {
	description = "Secret " ..desc.. "Top One Side",
	tiles = {
		{image=animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=speed}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = inv ,
	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
       	groups = {choppy=2,dig_immediate=1},
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
	description = "Secret " ..desc.. "Top Corner Side",
	tiles = {
		{image=animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=speed}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = inv ,
	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
       	groups = {choppy=2,dig_immediate=1},
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
	description = "Secret " ..desc.. " Top",
	tiles = {
		{image=animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=speed}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = inv ,
	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
       	groups = {choppy=2,dig_immediate=1},
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
	description = "Secret " ..desc.. " Top End",
	tiles = {
		{image=animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=speed}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = inv ,
	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
       	groups = {choppy=2,dig_immediate=1},
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
	description = "Secret " ..desc.. " Bottom End",
	tiles = {
		{image=animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=speed}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = inv ,
	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
       	groups = {choppy=2,dig_immediate=1},
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
	description = "Secret " ..desc.. " Wall",
	tiles = {
		{image=animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=speed}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = inv ,
	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
       	groups = {choppy=2,dig_immediate=1},
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
	description = "Secret " ..desc.. " Corner Wall",
	tiles = {
		{image=animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=speed}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = inv ,
	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
       	groups = {choppy=2,dig_immediate=1},
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
	description = "Secret " ..desc.. " Top Wall",
	tiles = {
		{image=animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=speed}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = inv ,
	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
       	groups = {choppy=2,dig_immediate=1},
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
	description = "Secret " ..desc.. " Stairs",
	tiles = {
		{image=animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=speed}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = inv ,
	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
       	groups = {choppy=2,dig_immediate=1},
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
	description = "Super Secret" ..desc.. " Stairs",
	tiles = {
		{image=animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=speed}
		},
			},
	alpha = WATER_ALPHA,
	inventory_image = inv ,
	wield_image = inv,
	drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
       	groups = {choppy=2,dig_immediate=1},
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
