local walkinggrass = {}

walkinggrass.types = {
-----Material Name				Material Desc						Standart tile					Craft						tileup										tiledown			tileleft			tileright			tilebehind			tilefront
	{"endofroad",				"End of Road",						nil,							"castle:dirt",				"castle_endof_road_grass.png",				nil,				nil,				nil,				nil,				nil},
	{"crossroad",				"Cross Road",						nil,							"castle:dirt",				"castle_cross_road_grass.png"},
	{"sideroad",				"Side Road",						nil,							"castle:dirt",				"castle_side_road_grass.png"},
	{"middleroad",				"Middle Road",						nil,							"castle:dirt",				"castle_middle_road_grass.png"},
	{"junctionwalkingroad",		"Junction Walking and Road",		nil,							"castle:dirt",				"castle_junction_road_walking_grass.png"},
	{"endofwalking",			"End of Walking Road",				nil,							"castle:dirt",				"castle_endof_walking_grass.png"},
	{"crosswalking",			"Cross Walking Road",				nil,							"castle:dirt",				"castle_cross_walking_grass.png"},
	{"walking",					"Walking",							nil,							"castle:dirt",				"castle_walking_grass.png"},
	{"turningwalking",			"Turning Walking",					nil,							"castle:dirt",				"castle_turning_walking_grass.png"},
	{"Tjunctionwalking",			"T Junction Walking",					nil,							"castle:dirt",				"castle_T_junction_walking_road_grass.png"},
	{"turninginsideroad",			"Turning Inside Road",					nil,							"castle:dirt",				"castle_turning_inside_road_grass.png"},

}

for _, row in ipairs(walkinggrass.types) do
	local name =			 row[1]
	local desc =			 row[2]
	local inv =				 row[3] -- if alone , tile for all visible faces
	local craft_logical =	 row[4]
	local tileup =			 row[5]
	local tiledown =		 row[6]
	local tileleft =		 row[7]
	local tileright =		 row[8]
	local tilebehind =		 row[9]
	local tilefront =		 row[10]
--	local alltiles		-- Definition for all faces

	if inv == nil
		then	inv = "default_dirt.png^default_grass_side.png"
	end
	if tileup == nil
		then	tileup = inv
	end
	if tiledown == nil
		then	tiledown = "default_dirt.png"
	end
	if tileleft == nil
		then	tileleft = inv
	end
	if tileright == nil
		then	tileright = inv
	end
	if tilebehind == nil
		then	tilebehind = inv
	end
	if tilefront == nil
		then	tilefront = inv
	end


minetest.register_node("castle:walking_grass_" ..name, {
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	description = "Walking Grass " ..desc,
	tiles = { tileup, tiledown, tileleft, tileright, tilebehind, tilefront },
	inventory_image = tileup,
	groups = {cracky=3},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	})
})

end
