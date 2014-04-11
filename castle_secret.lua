--TRYING
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
	minetest.register_node("castle:top_secret_"..name, {
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
	output = "castle:top_secret_" ..name.. " 1",
	recipe = {
		{"", "castle:cover_" ..name , ""},
		{"", "", "castle:cover_" ..name },
		{"", "", ""},
	},
})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:top_secret_" ..name.. " 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end
