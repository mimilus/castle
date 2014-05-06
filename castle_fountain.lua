local fountain = {}

fountain.types = {

--{"fountain"," Opaque Fountain","default_water.png","castle:stone","castle_water_flowing_animated.png",2},
--{"fountain1"," Opaque Fountain 1","default_water.png","castle:stone","castle_water_flowing_animated1.png",2},
--{"fountain2"," Opaque Fountain 2","default_water.png","castle:stone","castle_water_flowing_animated2.png",2},
{"fountaintrans"," Transparent Fountain","default_water.png","castle:stone","castle_water_flowing_animated.png",1},
{"fountain1trans"," Transparent Fountain 1","default_water.png","castle:stone","castle_water_flowing_animated1.png",1},
{"fountain2trans"," Transparent Fountain 2","default_water.png","castle:stone","castle_water_flowing_animated2.png",1},

}

--Standart fountain

for _, row in ipairs(fountain.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	local animtile = row[5]
	local animation = row[6]
	local trans = row[7]

--			if trans == 1
--			then
--			local test = "alpha = WATER_ALPHA"
--			else
--			local test = "--alpha = WATER_ALPHA"
--			end


	-- Node Definition
	minetest.register_node("castle:" ..name.. "fountain", {
	    drawtype = "nodebox",
	        walkable = false,
		description = desc.." Roof Top  ",
		tiles = {
		{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
		},
		alpha = WATER_ALPHA ,
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
			output = "castle:" ..name.. "fountain 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "fountaincorner", {
	    drawtype = "nodebox",
	        walkable = false,
		description = desc.." Roof Top  Corner",
		tiles = {
		{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
		},
		alpha = WATER_ALPHA ,
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
			output = "castle:" ..name.. "fountaincorner 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:" ..name.. "fountainmiddle", {
	    drawtype = "nodebox",
	        walkable = false,
		description = desc.." Roof Top  Middle",
		tiles = {
		{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
		},
		alpha = WATER_ALPHA ,
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
			output = "castle:" ..name.. "fountainmiddle 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "fountainside", {
	    drawtype = "nodebox",
	        walkable = false,
		description = desc.." Roof Top  Side",
		tiles = {
		{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
		},
		alpha = WATER_ALPHA ,
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
			output = "castle:" ..name.. "fountainside 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "fountaincornerin", {
	    drawtype = "nodebox",
	        walkable = false,
		description = desc.." Roof Top  Corner In",
		tiles = {
		{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
		},
		alpha = WATER_ALPHA ,
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
			output = "castle:" ..name.. "fountaincornerin 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "fountainmiddleside", {
	    drawtype = "nodebox",
	        walkable = false,
		description = desc.." Roof Top  Middle Side",
		tiles = {
		{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
		},
		alpha = WATER_ALPHA ,
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
			output = "castle:" ..name.. "fountainmiddleside 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "fountainmiddlecross", {
	    drawtype = "nodebox",
	        walkable = false,
		description = desc.." Roof Top  Middle Cross",
		tiles = {
		{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
		},
		alpha = WATER_ALPHA ,
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
			output = "castle:" ..name.. "fountainmiddlecross 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "fountainmiddlecrossT", {
	    drawtype = "nodebox",
	        walkable = false,
		description = desc.." Roof Top  Middle Cross T",
		tiles = {
		{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
		},
		alpha = WATER_ALPHA ,
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
			output = "castle:" ..name.. "fountainmiddlecrossT 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

----OK
	minetest.register_node("castle:" ..name.. "fountainmiddlecrossL", {
	    drawtype = "nodebox",
	        walkable = false,
		description = desc.." Roof Top  Middle Cross L",
		tiles = {
		{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
		},
		alpha = WATER_ALPHA ,
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
			output = "castle:" ..name.. "fountainmiddlecrossL 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


--Cube Node
minetest.register_node("castle:" ..name.. "fountaincube", {
	description = desc.." Cube",
	drawtype = "nodebox",
	    walkable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.5,0.5},
		},
	},
	tiles = {
	{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		length=0.8}
		},
	},
		alpha = WATER_ALPHA ,
	paramtype = "light",
	paramtype2 = "facedir",
--	drop = "castle:" ..name,
	groups = {cracky=3,attached_node=0},
	sounds = default.node_sound_stone_defaults(),
})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "fountaincube 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

end


local bubblecube = {}

bubblecube.types = {

		{"bubble",		" Bubble",		"bubble.png",							"",		"castle_animated_bubble.png",					0.5},
		{"bubbletop",	" Bubble Top",	"castle_animated_bubble_top_inv.png",	"",		"castle_animated_bubble_top.png",					0.7},
}

--Standart Bubble

for _, row in ipairs(bubblecube.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	local animtile = row[5]
	local speed = row[6]
	local trans = row[7]


--Bubble Cube Node
minetest.register_node("castle:" ..name.. "bubblecube", {
	description = desc ,
	drawtype = "nodebox",
	    walkable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.5,0.5},
		},
	},
	tiles = {
		"castle_space.png",
		"castle_space.png",
	{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		lenght=speed}
		},
	{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		lenght=speed}
		},
	{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		lenght=speed}
		},
	{image = animtile,
		backface_culling = true,
		animation={
		type="vertical_frames",
		aspect_w=16,
		aspect_h=16,
		lenght=speed}
		},
	},
		inventory_image = tile ,
		alpha = WATER_ALPHA ,
	paramtype = "light",
	paramtype2 = "facedir",
--	drop = "castle:" ..name,
	groups = {cracky=3,attached_node=0},
	sounds = default.node_sound_stone_defaults(),
})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "fountaincube 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

end
