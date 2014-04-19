local use_moreores = minetest.get_modpath("moreores")

local castle_shields = {}

castle_shields.types = {
	{"stonewall","StoneWall","castle_secret_stonewall_door_inv.png","castle_secret_stonewall_door_top","castle_secret_stonewall_door_bottom","castle:stone"},
	{"dungeonwall","DungeonWall","castle_secret_dungeon_door_inv.png","castle_secret_dungeon_door_top","castle_secret_dungeon_door_bottom","castle:cover_dungeon"},
	{"cornwall","CornWall","castle_secret_cornwall_door_inv.png","castle_secret_cornwall_door_top","castle_secret_cornwall_door_bottom","castle:cover_cornerwall"},
	{"book","Bookshelf","castle_secret_book_door_inv.png","castle_secret_book_door_top","castle_secret_book_door_bottom","default:bookshelf"},
}

for _, row in ipairs(secret_door.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local tile = row[4]
	local craft_material = row[5]
	-- Node Definition
-- Register Shields

minetest.register_tool("castle:shield_wood", {
	description = "Wooden Shield",
	inventory_image = "shields_inv_shield_wood.png",
	groups = {armor_shield=5, armor_heal=0, armor_use=2000},
	wear = 0,
})

minetest.register_tool("shields:shield_steel", {
	description = "Steel Shield",
	inventory_image = "shields_inv_shield_steel.png",
	groups = {armor_shield=10, armor_heal=0, armor_use=500},
	wear = 0,
})

minetest.register_tool("shields:shield_bronze", {
	description = "Bronze Shield",
	inventory_image = "shields_inv_shield_bronze.png",
	groups = {armor_shield=10, armor_heal=6, armor_use=250},
	wear = 0,
})

minetest.register_tool("shields:shield_diamond", {
	description = "Diamond Shield",
	inventory_image = "shields_inv_shield_diamond.png",
	groups = {armor_shield=15, armor_heal=12, armor_use=100},
	wear = 0,
})

if use_moreores then
	minetest.register_tool("shields:shield_mithril", {
		description = "Mithril Shield",
		inventory_image = "shields_inv_shield_mithril.png",
		groups = {armor_shield=15, armor_heal=12, armor_use=50},
		wear = 0,
	})
end

local craft_ingreds = {
	wood = "default:wood",
	steel = "default:steel_ingot",
	bronze = "default:bronze_ingot",
	diamond = "default:diamond",
}	

if has_moreores then
	craft_ingreds.mithril = "moreores:mithril_ingot"
end

for k, v in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "shields:shield_"..k,
		recipe = {
			{v, v, v},
			{v, v, v},
			{"", v, ""},
		},
	})
end

minetest.after(0, function()
	table.insert(armor.elements, "shield")
	armor.formspec = "size[8,8.5]button[0,0;2,0.5;main;Back]"
		.."list[current_player;main;0,4.5;8,4;]"
		.."list[detached:player_name_armor;armor_head;3,0;1,1;]"
		.."list[detached:player_name_armor;armor_torso;3,1;1,1;]"
		.."list[detached:player_name_armor;armor_legs;3,2;1,1;]"
		.."list[detached:player_name_armor;armor_feet;3,3;1,1;]"
		.."list[detached:player_name_armor;armor_shield;4,1;1,1;]"
end)

