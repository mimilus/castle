local walkingroad = {}
originalnodes = {} -- GLOBAL
materials = {} --Global

originalnodes.types = {
--oriname						oridesc						oritop					oribottom					orifaces
{"ondirt",					" on Dirt",					"default_dirt.png",			nil,						nil},
{"ondirt_with_grass",		" on Dirt with Grass",		"default_grass.png",		"default_dirt.png",			"default_dirt.png^default_grass_side.png"},
{"ondirt_with_snow",		" on Dirt with Snow",		"default_snow.png",			"default_dirt.png",			"default_dirt.png^default_snow_side.png"},
}

materials.types = {
--material			materialdesc
{"_sandstone",		"SandStone"},
{"_gravel",			"Gravel"},
{"_redsand",		"RedSand"},
}

	walkingroad.types = {
-----Material Name				Material Desc						tiletop
		{"roadendof",			"End of Road",						"roadendof"},
		{"roadmiddle",			"Middle of Road",					"roadmiddle"},
		{"roadside",			"Side of Road",						"roadside"},
		{"roadturninginside",	"Turning Inside Road",				"roadturninginside"},
		{"roadturningoutside",	"Turning Outside Road",				"roadturningoutside"},
		{"roundabout",			"Roundabout Road",					"roundabout"},
		{"roundof",				"Round of",							"roundof"},
		{"walkingcross",		"Cross Walkable",					"walkingcross"},
		{"walkingendof",		"End of Walkable",					"walkingendof"},
		{"walking",				"Walkable",							"walking"},
		{"walkingjunction",		"Junction of Walkable",				"walkingjunction"},
		{"walkingroadjunction",	"Junction of Walkable and Road",	"walkingroadjunction"},
--		{"walkingstair",		"Walkable Stair",					"walkingstair"},
		{"walkingturning",		"Turning Walkable",					"walkingturning"},
	}

for _, row in ipairs(originalnodes.types) do
oriname = row [1] -- GLOBAL
oridesc = row [2] -- GLOBAL
oritop = row [3] -- GLOBAL
oribottom = row [4] -- GLOBAL
orifaces = row [5] -- GLOBAL

for _, row in ipairs(materials.types) do
material = 		row [1] --GLOBAL
materialdesc = 	row [2] --GLOBAL

for _, row in ipairs(walkingroad.types) do
local name =			 row[1]
local namedesc =		 row[2]
local tiletop =			 row[3] -- if alone , tile for all visible faces


	if oritop == nil
		then	inv = "default_dirt.png"
	end
	if tiletop == nil
		then	tiletop = "default_dirt.png"
	end
	if oribottom == nil
		then	oribottom = "default_dirt.png"
	end
	if orifaces == nil
		then 	orifaces = "default_dirt.png"
	end


minetest.register_node("castle:0" ..oriname..material..name, {
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	description = namedesc..materialdesc..oridesc,
	tiles = { oritop.. "^" ..tiletop..material.. ".png", oribottom, orifaces },
--	inventory_image = tileup,
	groups = {cracky=3},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	})
})
end
end
end


local walkingroadstairs = {}

	walkingroadstairs.types = {
-----Material Name				Material Desc						tiletop						tilefront
--		{"roadendof",			"End of Road",						"roadendof"},
		{"roadmiddle",			"Middle of Road",					"roadmiddle"},
		{"roadside",			"Side of Road",						"roadside"},
		{"leftroadside",		"Left Side of Road",				"leftroadside"},
--		{"roadturninginside",	"Turning Inside Road",				"roadturninginside"},
--		{"roadturningoutside",	"Turning Outside Road",				"roadturningoutside"},
--		{"roundabout",			"Roundabout Road",					"roundabout"},
		{"roundof",				"Round of",							"roundof",					"walkingstair"},
--		{"walkingcross",		"Cross Walkable",					"walkingcross"},
--		{"walkingendof",		"End of Walkable",					"walkingendof"},
		{"walking",				"Walkable",							"walking"},
--		{"walkingjunction",		"Junction of Walkable",				"walkingjunction"},
--		{"walkingroadjunction",	"Junction of Walkable and Road",	"walkingroadjunction"},
--		{"walkingstair",		"Walkable Stair",					"walkingstair"},
--		{"walkingturning",		"Turning Walkable",					"walkingturning"},
	}

for _, row in ipairs(originalnodes.types) do
oriname = row [1] -- GLOBAL
oridesc = row [2] -- GLOBAL
oritop = row [3] -- GLOBAL
oribottom = row [4] -- GLOBAL
orifaces = row [5] -- GLOBAL

for _, row in ipairs(materials.types) do
material = 		row [1] --GLOBAL
materialdesc = 	row [2] --GLOBAL

for _, row in ipairs(walkingroadstairs.types) do
local name =			 row[1]
local namedesc =		 row[2]
local tiletop =			 row[3] -- if alone , tile for all visible faces
local tilefront = 		 row[4]

	if orifaces == nil
		then 	orifaces = "default_dirt.png"
	end

	if oritop == nil
		then	inv = 			"default_dirt.png"
	end
	if tiletop == nil
		then	tiletop = 		"default_dirt.png"
	end
	if oribottom == nil
		then	oribottom = 	"default_dirt.png"
	end
	if tilefront == nil
		then	tilefront = 	tiletop
	end


minetest.register_node("castle:0" ..oriname..material..name.. "slab", {
	drawtype="nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	description = namedesc..materialdesc..oridesc.. "Slab",
	tiles = { oritop.. "^" ..tiletop..material.. ".png", oribottom, orifaces, orifaces, orifaces, orifaces.. "^" ..tilefront..material.. ".png" },
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
	description = namedesc..materialdesc..oridesc.. "Stair",
	tiles = { oritop.. "^" ..tiletop..material.. ".png", oribottom, orifaces, orifaces, orifaces, orifaces.. "^" ..tilefront..material.. ".png"},
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
