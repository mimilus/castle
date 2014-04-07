-- Boilerplate to support localized strings if intllib mod is installed.
local S
if intllib then
    S = intllib.Getter()
else
    S = function(s) return s end
end

local hole = {}

hole.types = {
	{"stonewall", S("Stonewall"), "castle_stonewall", "castle:stonewall"},
    {"cobble", S("Cobble"), "default_cobble", "default:cobble"},
    {"stonebrick", S("Stonebrick"), "default_stone_brick", "default:stonebrick"},
    {"sandstonebrick", S("Sandstone Brick"), "default_sandstone_brick", "default:sandstonebrick"},
    {"desertstonebrick", S("Desert Stone Brick"), "default_desert_stone_brick", "default:desert_stonebrick"},
    {"stone", S("Stone"), "default_stone", "default:stone"},
    {"sandstone", S("Sandstone"), "default_sandstone", "default:sandstone"},
    {"desertstone", S("Desert Stone"), "default_desert_stone", "default:desert_stone"},
}

for _, row in ipairs(hole.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:hole_"..name, {
	    drawtype = "nodebox",
		description = S("%s Murder Hole"):format(desc),
		tiles = {tile..".png"},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-8/16,-8/16,-8/16,-4/16,8/16,8/16}, 
			{4/16,-8/16,-8/16,8/16,8/16,8/16}, 
			{-4/16,-8/16,-8/16,4/16,8/16,-4/16}, 
			{-4/16,-8/16,8/16,4/16,8/16,4/16}, 
		
		},
	},
	})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:hole_"..name.." 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end

