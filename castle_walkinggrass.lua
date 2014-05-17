local walkingroad = {}
originalnodes = {} -- GLOBAL
materials = {} --Global

originalnodes.types = {
--oriname		oridesc			oritop					oribottom				orifaces										oriright											orileft												oribehind		orifront												oristair
{"onlawn",		" on Lawn",			"default_grass.png",	"default_dirt.png",		"default_grass.png"},
{"onlawn2",		" on Lawn2",		"castle_lawn2.png",		"default_dirt.png",		"castle_lawn2.png"},
{"onlawn3",		" on Lawn3",		"castle_lawn3.png",		"default_dirt.png",		"castle_lawn3.png"},

{"ondirt",					" on Dirt",					"default_dirt.png",			nil,						nil},
{"ondirt_with_grass",		" on Dirt with Grass",		"default_grass.png",		"default_dirt.png",			"default_dirt.png^default_grass_side.png",		"default_dirt.png^castle_grass_side_right_16.png",	"default_dirt.png^castle_grass_side_left_16.png",	nil,			"default_dirt.png^castle_grass_side_front_16.png",		"default_dirt.png^castle_grass_side_front_16.png"},
{"ondirt_with_snow",		" on Dirt with Snow",		"default_snow.png",			"default_dirt.png",			"default_dirt.png^default_snow_side.png"},
{"cobble",					" on Cobble",				"default_cobble.png",		"default_cobble.png"},
{"stone",					" on Stone",				"default_stone.png",		"default_stone.png"},
{"desert_stone",			" on Desert Stone",			"default_desert_stone.png",	"default_desert_stone.png"},
}

materials.types = {
--material			materialdesc
{"_sandstone",		" SandStone"},
{"_gravel",			" Gravel"},
{"_redsand",		" RedSand"},
}

	walkingroad.types = {
-----Material Name				Material Desc						tiletop
		{"roadendof",			" End of Road",						"roadendof"},
		{"roadmiddle",			" Middle of Road",					"roadmiddle"},
		{"roadside",			" Side of Road",						"roadside"},
		{"roadturninginside",	" Turning Inside Road",				"roadturninginside"},
		{"roadturningoutside",	" Turning Outside Road",				"roadturningoutside"},
		{"roundabout",			" Roundabout Road",					"roundabout"},
		{"roundof",				" Round of",							"roundof"},
		{"walkingcross",		" Cross Walkable",					"walkingcross"},
		{"walkingendof",		" End of Walkable",					"walkingendof"},
		{"walking",				" Walkable",							"walking"},
		{"walkingjunction",		" Junction of Walkable",				"walkingjunction"},
		{"walkingroadjunction",	" Junction of Walkable and Road",	"walkingroadjunction"},
--		{"walkingstair",		"Walkable Stair",					"walkingstair"},
		{"walkingturning",		" Turning Walkable",					"walkingturning"},
	}

for _, row in ipairs(originalnodes.types) do
oriname = 		row [1]  -- GLOBAL
oridesc = 		row [2]  -- GLOBAL
oritop = 		row [3]  -- GLOBAL
oribottom = 	row [4]  -- GLOBAL
orifaces = 		row [5]  -- GLOBAL
oriright =		row [6]  -- GLOBAL
orileft =		row [7]  -- GLOBAL
oribehind =		row [8]  -- GLOBAL
orifront =		row [9]  -- GLOBAL
oristair = 		row [10] -- GLOBAL


for _, row in ipairs(materials.types) do
material = 		row [1] --GLOBAL
materialdesc = 	row [2] --GLOBAL




for _, row in ipairs(walkingroad.types) do
local name =			 row[1]
local namedesc =		 row[2]
local tiletop =			 row[3] -- if alone , tile for all visible faces


	if tiletop == nil
		then	tiletop = 		"default_dirt.png"
	end
	if oritop == nil
		then	inv = 			"default_dirt.png"
	end
	if oribottom == nil
		then	oribottom = 	"default_dirt.png"
	end
	if tilefront == nil
		then	tilefront = 	tiletop
	end
	if orifaces == nil
		then 	orifaces = 		oritop
	end

minetest.register_node("castle:0" ..oriname..material..name, {
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	description = namedesc..materialdesc..oridesc,
	tiles = { oritop.. "^" ..tiletop..material.. ".png",
			  oribottom,
			  orifaces },
--	inventory_image = tileup,
	groups = {cracky=3},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	})
})
end

local walkingroadstairs = {}
	walkingroadstairs.types = {
-----Material Name				Material Desc						tiletop						tilefront				tilebehind
--		{"roadendof",			" End of Road",						"roadendof"},
		{"roadmiddle",			" Middle of Road",					"roadmiddle",				nil,					nil},
		{"roadside",			" Side of Road",					"roadside",					nil,					"leftroadside"},
		{"leftroadside",		" Left Side of Road",				"leftroadside",				nil,					"roadside"},
--		{"roadturninginside",	" Turning Inside Road",				"roadturninginside"},
--		{"roadturningoutside",	" Turning Outside Road",			"roadturningoutside"},
--		{"roundabout",			" Roundabout Road",					"roundabout"},
		{"roundof",				" Round of",						"roundof",					"walkingstair",			nil},
--		{"walkingcross",		" Cross Walkable",					"walkingcross"},
--		{"walkingendof",		" End of Walkable",					"walkingendof"},
		{"walking",				" Walkable",						"walking",					nil,					nil},
--		{"walkingjunction",		" Junction of Walkable",			"walkingjunction",			nil,					nil},
--		{"walkingroadjunction",	" Junction of Walkable and Road",	"walkingroadjunction"},
--		{"walkingstair",		" Walkable Stair",					"walkingstair"},
--		{"walkingturning",		" Turning Walkable",					"walkingturning"},
	}

for _, row in ipairs(materials.types) do
material = 		row [1] --GLOBAL
materialdesc = 	row [2] --GLOBAL

for _, row in ipairs(walkingroadstairs.types) do
local name =			 row [1]
local namedesc =		 row [2]
local tiletop =			 row [3] -- if alone , tile for all visible faces
local tilefront = 		 row [4]
local tilebehind =		 row [5]

	if tiletop == nil
		then	tiletop = 		oritop
	end
	if tilebehind == nil
		then 	tilebehind =	 tiletop
	end
	if tilefront == nil
		then	tilefront = 	tiletop
	end
		if oribottom == nil
		then	oribottom = 	oritop
	end
	if orifaces == nil
		then 	orifaces = 		orifront
	end
	if oriright == nil
		then 	oriright =	 	orifaces
	end
	if orileft == nil
		then	 orileft = 		orifaces
	end
	if oribehind == nil
		then oribehind = 		oritop
	end
	if  orifront == nil
		then 	orifront = 		orifaces
	end
	if oristair == nil
		then oristair = oritop
	end

minetest.register_node("castle:0" ..oriname..material..name.. "slab", {
	drawtype="nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = namedesc..materialdesc..oridesc.. " Slab",
	tiles = { oritop.. "^" ..tiletop..material.. ".png",
			 oribottom,
			 oristair,
			 oristair,
			 oristair.. "^" ..tilebehind..material.. ".png",
			 oristair.. "^" ..tilefront..material.. ".png" },
--	inventory_image = tileup,
	groups = {cracky=3},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	}),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0,0.5} --NodeBox1
		}
	},
})

minetest.register_node("castle:0" ..oriname..material..name.. "stair", {
	drawtype="nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = namedesc..materialdesc..oridesc.. " Stair",
	tiles = { oritop.. "^" ..tiletop..material.. ".png",
			  oribottom,
			  oriright,
			  orileft,
			  orifaces,
			  orifront.. "^" ..tilefront..material.. ".png"},
--	inventory_image = tileup,
	groups = {cracky=3},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	}),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0,0.5}, --NodeBox1
			{-0.5,0,0,0.5,0.5,0.5} --NodeBox2
		}
	},
})

end
end
end
end

minetest.register_abm({
	nodenames = {"default:dirt"},
	interval = 2,
	chance = 1,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if name == "air" then
			if name == "default:snow" or name == "default:snowblock" then
				minetest.set_node(pos, {name = "default:dirt_with_snow"})
			else
				minetest.set_node(pos, {name = "default:dirt_with_grass"})
			end
		end
	end
})

minetest.register_abm({
	nodenames = {"default:dirt_with_grass",
				"trail:dirt_with_grass_walked",
				"trail:dirt_walked",
				"trail:sand_walked",
				"trail:desert_sand_walked",
				"trail:snow_walked",
				"trail:snow_block_walked",},
	interval = 2,
	chance = 1,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if name ~= "ignore" and nodedef
				and not ((nodedef.sunlight_propagates or nodedef.paramtype == "light")
				and nodedef.liquidtype == "none") or name ~= "air" then
			minetest.set_node(pos, {name = "default:dirt"})
		end
	end
})
