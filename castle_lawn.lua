local lawncornerstairs = {}

lawncornerstairs.types = {
-----Material			Material Desc			Standart tile					Craft						tileup				tiledown			tileleft			tileright			tilebehind			tilefront
--{"lawn",		"Lawn",			"default_grass.png",	"default_dirt.png",		"default_grass.png"},
{"lawn2",		"Lawn2",		"castle_lawn2.png",		"default_dirt.png",		"castle_lawn2.png"},
{"lawn3",		"Lawn3",		"castle_lawn3.png",		"default_dirt.png",		"castle_lawn3.png"},
}

for _, row in ipairs(lawncornerstairs.types) do
	local name =			 row[1]
	local desc =			 row[2]
	local inv =				 row[3]
	local craft_logical =	 row[4]
	local tileup =			 row[5] -- if alone , tile for all faces
	local tiledown =		 row[6]
	local tileleft =		 row[7]
	local tileright =		 row[8]
	local tilebehind =		 row[9]
	local tilefront =		 row[10]
	local alltiles		-- Definition for all faces

local thesound = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},})

if tilesdown == nil then
alltiles = { inv }
else
alltiles = { tileup,tiledown,tileleft,tileright,tilebehind,tilefront }
end


minetest.register_node(":stairs:stair_" ..name.. "_cornerstairs", {
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Castle " ..desc.. " Corner Stairs",
	tiles = alltiles ,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0,0.5}, --NodeBox1
			{0,0,0,0.5,0.5,0.5}, --NodeBox2
			{-0.5,0,-0.5,0,0.5,0.5},
			}
	},
	groups = {cracky=3},
	sounds = thesound,
})


minetest.register_node(":stairs:stair_" ..name.. "_cornerslab", {
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Castle " ..desc.. " Slab Stairs",
	tiles = alltiles ,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0,0.5}, --NodeBox1
			{-0.5,0,0,0,0.5,0.5}, --NodeBox2
			}
	},
	groups = {cracky=3},
	sounds = thesound,
})

--Turning Left stair
minetest.register_node(":stairs" ..name.. "_turning_stairleft",{
	drawtype="nodebox",
		description = desc.. " Left Turning Stair",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {inv},
		groups = {cracky=3,attached_node=0},
		sounds = thesound,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0,0.5}, --NodeBox1
			{-0.5,0,0.4375,0.5,0.5,0.5}, --NodeBox18--
			{-0.5,0,0.3125,0.375,0.5,0.375}, --NodeBox19--
			{-0.5,0,0.1875,0.25,0.5,0.25}, --NodeBox20--
			{-0.5,0,0.0625,0.125,0.5,0.125}, --NodeBox21--
			{-0.5,0,-0.0625,0,0.5,0}, --NodeBox22--
			{-0.5,0,-0.1875,-0.125,0.5,-0.125}, --NodeBox23--
			{-0.5,0,-0.3125,-0.25,0.5,-0.25}, --NodeBox24--
			{-0.5,0,-0.5,-0.4375,0.5,-0.4375}, --NodeBox25--
			{-0.5,0,-0.4375,-0.375,0.5,-0.375}, --NodeBox10
			{-0.5,0,-0.375,-0.3125,0.5,-0.3125}, --NodeBox11
			{-0.5,0,-0.25,-0.1875,0.5,-0.1875}, --NodeBox12
			{-0.5,0,-0.125,-0.0625,0.5,-0.0625}, --NodeBox13
			{-0.5,0,0,0.0625,0.5,0.0625}, --NodeBox14
			{-0.5,0,0.125,0.1875,0.5,0.1875}, --NodeBox15
			{-0.5,0,0.25,0.3125,0.5,0.3125}, --NodeBox16
			{-0.5,0,0.375,0.4375,0.5,0.4375}, --NodeBox17
	},
	}
})

--Turning Right stair
minetest.register_node(":stairs" ..name.. "_turning_stairright",{
	drawtype="nodebox",
		description = desc.. " Right Turning Stair",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {inv},
		groups = {cracky=3,attached_node=0},
		sounds = thesound,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0,0.5}, --NodeBox1
			{0.5,0,0.4375,-0.5,0.5,0.5}, --NodeBox18--
			{0.5,0,0.3125,-0.375,0.5,0.375}, --NodeBox19--
			{0.5,0,0.1875,-0.25,0.5,0.25}, --NodeBox20--
			{0.5,0,0.0625,-0.125,0.5,0.125}, --NodeBox21--
			{0.5,0,-0.0625,0,0.5,0}, --NodeBox22--
			{0.5,0,-0.1875,0.125,0.5,-0.125}, --NodeBox23--
			{0.5,0,-0.3125,0.25,0.5,-0.25}, --NodeBox24--
			{0.5,0,-0.5,0.4375,0.5,-0.4375}, --NodeBox25--
			{0.5,0,-0.4375,0.375,0.5,-0.375}, --NodeBox10
			{0.5,0,-0.375,0.3125,0.5,-0.3125}, --NodeBox11
			{0.5,0,-0.25,0.1875,0.5,-0.1875}, --NodeBox12
			{0.5,0,-0.125,0.0625,0.5,-0.0625}, --NodeBox13
			{0.5,0,0,-0.0625,0.5,0.0625}, --NodeBox14
			{0.5,0,0.125,-0.1875,0.5,0.1875}, --NodeBox15
			{0.5,0,0.25,-0.3125,0.5,0.3125}, --NodeBox16
			{0.5,0,0.375,-0.4375,0.5,0.4375}, --NodeBox17
	},
	}
})

stairs.register_stair_and_slab(name, craft_logical,
		{cracky=3},
		{inv},
		"Castle " ..desc.. " Stair",
		"Castle " ..desc.. " Slab",
		thesound)

minetest.register_craft({
	output = "castle:stairs 12",
	recipe = {
		{"castle:stonewall","",""},
		{"castle:stonewall","castle:stonewall",""},
		{"castle:stonewall","castle:stonewall","castle:stonewall"},
	}
})

minetest.register_craft({
	output = "castle:stairs 2",
	recipe = {
		{"castle:stonewall","",""},
		{"castle:saw","",""},
		{"","",""},
	}
})

minetest.register_node("castle:" ..name, {
	description = "Castle " ..desc ,
	drawtype = "normal",
	tiles = {inv},
	paramtype = light,
--	paramtype2 = "facedir",
	drop = "castle:" ..name,
	groups = {cracky=3},
	sounds = thesound,
})
end

