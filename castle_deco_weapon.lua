--Flat deco for walls

local castle_deco_weapon = {}

castle_deco_weapon.types = {
--Team BLUE
	{"blue_1","Blue 1","castle_deco_arms_1.png","castle_deco:blue_1"},
	{"blue_2","Blue 2","castle_deco_dagger_shield_1.png","castle_deco:blue_2"},
	{"blue_3","Blue 3","castle_deco_longshield_baw_sword_1.png","castle_deco:blue_3"},
	{"blue_4","Blue 4","castle_deco_shield_sword_1.png","castle_deco:blue_4"},
--Team YELLOW
	{"yellow_1","Yellow 1","castle_deco_arms_2.png","castle_deco:yellow_1"},
	{"yellow_2","Yellow 2","castle_deco_dagger_shield_2.png","castle_deco:yellow_2"},
	{"yellow_3","Yellow 3","castle_deco_longshield_baw_sword_2.png","castle_deco:yellow_3"},
	{"yellow_4","Yellow 4","castle_deco_shield_sword_2.png","castle_deco:yellow_4"},
--Team GREEN
	{"green_1","Green 1","castle_deco_arms_3.png","castle_deco:green_1"},
	{"green_2","Green 2","castle_deco_dagger_shield_3.png","castle_deco:green_2"},
	{"green_3","Green 3","castle_deco_longshield_baw_sword_3.png","castle_deco:green_3"},
	{"green_4","Green 4","castle_deco_shield_sword_3.png","castle_deco:green_4"},
--All Team
	{"all_1","All 1","castle_deco_bow_crosbow.png","castle_deco:all_1"},
	{"all_2","All 2","castle_deco_dagger_sword.png","castle_deco:all_2"},
	{"all_3","All 3","castle_deco_four_arms.png","castle_deco:all_3"},
	{"all_4","All 4","castle_deco_long_swords.png","castle_deco:all_4"},
	{"all_5","All 5","castle_deco_shield_four_sword.png","castle_deco:all_5"},
	{"all_6","All 6","castle_deco_two_axes.png","castle_deco:all_6"},
	{"all_7","All 7","castle_deco_arrows_bows.png","castle_deco:all_7"},
--Alliance Team
	{"all_1_2","All 1_2","castle_deco_alliance_1_2.png","castle_deco:all_1_2"},
	{"all_1_3","All 1_3","castle_deco_alliance_1_3.png","castle_deco:all_1_3"},
	{"all_2_3","All 2_3","castle_deco_alliance_2_3.png","castle_deco:all_2_3"},
	{"all_1_2_3","All 1_2_3","castle_deco_three_shield_four_sword.png","castle_deco:all_1_2_3"},
}

for _, row in ipairs(castle_deco_weapon.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local craft_logical = row[4]

-- Cover Definition

minetest.register_node("castle:deco_weapon_team_" ..name, {
	description = "Deco "  ..desc.. " Weapon Team",
	inventory_image = inv ,
	tiles = { inv },
    drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
    node_box={
        type="fixed",
        fixed = {-0.5,-0.5,0.48,0.5,0.5,0.5}
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
--	sounds = default.node_sound_stone_defaults(),
})

--minetest.register_craft({
--	output = "castle:deco_weapon_" ..name.. "1",
--	recipe = {
--		{"castle:saw", craft_logical ,""},
--		{"", "", ""},
--		{"", "", ""}
--	},
--})
end

