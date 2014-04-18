--minetest.register_alias("castle:arrowslit", "castle:arrowslit_stonewall")
--minetest.register_alias("castle:arrowslit_hole", "castle:arrowslit_stonewall_hole")
--minetest.register_alias("castle:arrowslit", "castle:arrowslit_stonewall_cross")
--Removed
--    {"cobble", "Cobble", "default_cobble", "default:cobble"},
--    {"sandstonebrick", "Sandstone Brick", "default_sandstone_brick", "default:sandstone_brick"},
--    {"sandstone", "Sandstone", "default_sandstone", "default:sandstone"},
--    {"desertstonebrick", "Desert Stone Brick", "default_desert_stone_brick", "default:desert_stonebrick"},
--    {"desertstone", "Desert Stone", "default_desert_stone", "default:desert_stone"},
--    {"stonebrick", "Stonebrick", "default_stone_brick", "default:stonebrick"},
--    {"stone", "Stone", "default_stone", "default:stone"},

local arrowslit = {}

arrowslit.types = {
	{"stonewall", "Stonewall", "castle_stonewall", "castle:stonewall"},
	{"castle_cornerwall", "CornerWall", "castle_cornwall", "castle:cornerwall"},
	{"dungeon_stone","Dungeon Stone","castle_dungeon_stone","castle:dungeon_stone"},
}

for _, row in ipairs(arrowslit.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:arrowslit_"..name, {
	    drawtype = "nodebox",
		description = desc.." Arrowslit",
		tiles = {tile..".png"},
		groups = {cracky=3},
		sounds = default.node_sound_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.375000,-0.500000,-0.062500,0.375000,-0.4375},
			{0.062500,-0.375000,-0.500000,0.500000,0.375000,-0.4375},
			{-0.500000,0.375000,-0.500000,0.500000,0.500000,-0.4375}, 
			{-0.500000,-0.500000,-0.500000,0.500000,-0.375000,-0.4375}, 
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.500000,-0.500000,0.500000,0.500000,-0.4375},
		},
	},
	})
	minetest.register_node("castle:arrowslit_"..name.."_cross", {
	    drawtype = "nodebox",
		description = desc.." Arrowslit with Cross",
		tiles = {tile..".png"},
		groups = {cracky=3},
		sounds = default.node_sound_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.125000,-0.500000,-0.062500,0.375000,-0.4375}, 
			{0.062500,-0.125000,-0.500000,0.500000,0.375000,-0.4375},
			{-0.500000,0.375000,-0.500000,0.500000,0.500000,-0.4375}, 
			{-0.500000,-0.500000,-0.500000,0.500000,-0.375000,-0.4375}, 
			{0.062500,-0.375000,-0.500000,0.500000,-0.250000,-0.4375}, 
			{-0.500000,-0.375000,-0.500000,-0.062500,-0.250000,-0.4375},
			{-0.500000,-0.250000,-0.500000,-0.187500,-0.125000,-0.4375}, 
			{0.187500,-0.250000,-0.500000,0.500000,-0.125000,-0.4375}, 
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.500000,-0.500000,0.500000,0.500000,-0.4375},
		},
	},
	})
	minetest.register_node("castle:arrowslit_"..name.."_hole", {
	    drawtype = "nodebox",
		description = desc.." Arrowslit with Hole",
		tiles = {tile..".png"},
		groups = {cracky=3},
		sounds = default.node_sound_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.375000,-0.500000,-0.125000,0.375000,-0.4375},
			{0.125000,-0.375000,-0.500000,0.500000,0.375000,-0.4375}, 
			{-0.500000,-0.500000,-0.500000,0.500000,-0.375000,-0.4375}, 
			{0.062500,-0.125000,-0.500000,0.125000,0.375000,-0.4375},
			{-0.125000,-0.125000,-0.500000,-0.062500,0.375000,-0.4375},
			{-0.500000,0.375000,-0.500000,0.500000,0.500000,-0.4375}, 
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.500000,-0.500000,0.500000,0.500000,-0.4375},
		},
	},
	})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:arrowslit_"..name.." 6",
			recipe = {
			{craft_material,"", craft_material},
			{craft_material,"", craft_material},
			{craft_material,"", craft_material} },
		})
	end
	if craft_material then
		minetest.register_craft({
			output = "castle:arrowslit_"..name.."_cross",
			recipe = {
			{"castle:arrowslit_"..name} },
		})
	end
	if craft_material then
		minetest.register_craft({
			output = "castle:arrowslit_"..name.."_hole",
			recipe = {
			{"castle:arrowslit_"..name.."_cross"} },
		})
	end
	if craft_material then
		minetest.register_craft({
			output = "castle:arrowslit_"..name,
			recipe = {
			{"castle:arrowslit_"..name.."_hole"} },
		})
	end
end
