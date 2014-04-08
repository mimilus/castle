--castle Mod By Daniel modified by mimilus
--The castle
-- Boilerplate to support localized strings if intllib mod is installed.
local S
if intllib then
	S = intllib.Getter()
else
	S = function(s) return s end
end

local cover = {}

cover.types = {
    {"cover_stonewall", "Castlewall", "castle_stonewall", "castle:stonewall", default.node_sound_stone_defaults()},
    {"cover_dungeon", "Dungeonwall", "castle_dungeon_stone", "castle:dungeon_stone", default.node_sound_stone_defaults()},
    {"dirt", "Dirt", "default_dirt", "default:dirt", default.node_sound_dirt_defaults()},
    {"stone", "Stone", "default_stone", "default:stone", default.node_sound_stone_defaults()},
    {"cobble", "Cobble", "default_cobble", "default:cobble", default.node_sound_stone_defaults()},
    {"sand", "Sand", "default_sand", "default:sand", default.node_sound_sand_defaults()},
    {"desert_sand", "Desert Sand", "default_desert_sand", "default:desert_sand", default.node_sound_sand_defaults()},
    {"desert_stone", "Desert Stone", "default_desert_stone", "default:desert_stone", default.node_sound_stone_defaults()},
    {"brick", "Brick", "default_brick", "default:brick", default.node_sound_stone_defaults()},
    {"steel", "Steel", "default_steel_block", "default:steelblock", default.node_sound_stone_defaults()},
    {"glass", "Glass", "default_glass", "default:glass", default.node_sound_glass_defaults()},
    {"stonebrick", "Stone Brick", "default_stone_brick", "default:stonebrick", default.node_sound_stone_defaults()},
    {"desertstonebrick", "Desert Stone Brick", "default_desert_stone_brick", "default:desert_stonebrick", default.node_sound_stone_defaults()},
    {"sandstonebrick", "Sand Stone Brick", "default_sandstone_brick", "default:sand_stonebrick", default.node_sound_stone_defaults()},
    {"tree", "Tree ", "default_tree", "default:tree", default.node_sound_wood_defaults()},
    {"wood", "Wood ", "default_wood", "default:wood", default.node_sound_wood_defaults()},
    {"cover_bookshelf", "Bookshelf", "default_bookshelf", "default:bookshelf", default.node_sound_wood_defaults()},
    {"sandstone", "Sand Stone", "default_sandstone", "default:sandstone", default.node_sound_stone_defaults()},
    {"obsidian", "Obsidian", "default_obsidian", "default:obsidian", default.node_sound_glass_defaults()},
    {"gravel", "Gravel", "default_gravel", "default:gravel", default.node_sound_dirt_defaults({footstep = {name="default_gravel_footstep", gain=0.5},dug = {name="default_gravel_footstep", gain=1.0},})},
}

for _, row in ipairs(cover.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
    	local sound = row[5]

	-- Node Definition
	minetest.register_node("castle:"..name, {
		description = S("%s Cover"):format(S(desc)),
		tiles = {tile..".png"},
    	drawtype = "nodebox",
		paramtype = "light",
    	paramtype2 = "facedir",
    node_box={
        type = "fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
	sounds = sound,
	})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:"..name.." 16",
			recipe = {
			{"castle:saw",craft_material, ""},
			{"", "", ""},
			{"", "", ""}, },
		})
	end
end

--Saw
minetest.register_craftitem("castle:saw", {
	description = S("Handsaw"),
	tiles = { 'coversaw.png' },
	inventory_image = 'coversaw.png',
})

minetest.register_craftitem("castle:sawhandle", {
	description = S("Saw Handle"),
	tiles = { 'sawhandle.png' },
	inventory_image = 'sawhandle.png',
})

minetest.register_craftitem("castle:sawblade", {
	description = S("Saw Blade"),
	tiles = { 'sawblade.png' },
	inventory_image = 'sawblade.png',
})

minetest.register_craft({
	output = "castle:sawhandle",
	recipe = {
		{"default:stick", "default:stick", "default:stick"},
		{"default:stick", "", ""},
		{"", "", ""},
	},
})

minetest.register_craft({
	output = "castle:sawblade",
	recipe = {
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:stick", "default:stick", "default:stick"},
		{"", "", ""},
	},
})

minetest.register_craft({
	output = "castle:saw",
	recipe = {
		{"castle:sawhandle", "castle:sawblade", ""},
		{"", "", ""},
		{"", "", ""},
	},
})
