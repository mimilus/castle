local decoplayerbottom = {}

decoplayerbottom.types = {
	{"warriorgirl","Warrior Girl","castle_warrior_girl"},
	{"archer","Archer","castle_archer"},
	{"player","Player","castle_player"},
	{"armored1","Armored1","castle_armored1"},
	{"armored2","Armored2","castle_armored2"},
	{"girlarcher","Girl Archer","castle_girl_archer"},
}



for _, row in ipairs(decoplayerbottom.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
--	local inv = row[4]

----------------------------------
--  Strong defense standartwall --
----------------------------------

	-- Stong Defense Wall
	minetest.register_node("castle:deco" ..name.. "0decotop", {
	    drawtype = "nodebox",
		description = desc.." Top Deco Player",
		tiles = {
		"castle_space.png",
		"castle_space.png",
		"castle_space.png",
		"castle_space.png",
		tile.. "_top.png",
		tile.. "_top.png"},
		groups = {cracky=3,attached_node=0},
--		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.0625,0.5,0.5,0.0625}, --NodeBox1
		},
	},
	})

end

local decoplayertop = {}

decoplayertop.types = {
	{"warriorgirl","Warrior Girl","castle_warrior_girl"},
	{"archer","Archer","castle_archer"},
	{"player","Player","castle_player"},
	{"armored1","Armored1","castle_armored1"},
	{"armored2","Armored2","castle_armored2"},
	{"girlarcher","Girl Archer","castle_girl_archer"},
}



for _, row in ipairs(decoplayertop.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local inv = row[4]

----------------------------------
--  Strong defense standartwall --
----------------------------------

	-- Stong Defense Wall
	minetest.register_node("castle:deco" ..name.. "0decobottom", {
	    drawtype = "nodebox",
		description = desc.." Bottom Deco Player",
		tiles = {
		"castle_space.png",
		"castle_space.png",
		"castle_space.png",
		"castle_space.png",
		tile.. "_bottom.png",
		tile.. "_bottom.png"},
		groups = {cracky=3,attached_node=0},
--		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.0625,0.5,0.5,0.0625}, --NodeBox1
		},
	},
	})

end
