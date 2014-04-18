--UNLOCKED SECRET DOORS

local secret_door = {}

secret_door.types = {
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
	local tile2 = row[5]
	local craft_material = row[6]
	-- Node Definition

minetest.register_craft({
	output = "castle:secret_door" ..name,
	recipe = {
		{"castle:jailbars", "castle:jailbars"},
		{"castle:jailbars", "castle:jailbars"},
		{"castle:jailbars", "castle:jailbars"}
	}
})

doors:register_door("castle:secret_door" ..name, {
	description = "Secret Door " ..desc,
	inventory_image = inv,
	groups = {cracky=2,door=1},
	tiles_top = {tile.. ".png"},
	tiles_bottom = {tile2.. ".png"},
	only_placer_can_open = false,
})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:secret_door" ..name.. " 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end


minetest.register_craft({
	output = "castle:jail_door",
	recipe = {
		{"castle:jailbars", "castle:jailbars"},
		{"castle:jailbars", "castle:jailbars"},
		{"castle:jailbars", "castle:jailbars"}
	}
})
doors:register_door("castle:jail_door", {
	description = "Jail Door",
	inventory_image = "castle_jail_door_inv.png",
	groups = {cracky=2,door=1},
	tiles_bottom = {"castle_jail_door_bottom.png", "door_jail.png"},
	tiles_top = {"castle_jail_door_top.png", "door_jail.png"},
	only_placer_can_open = false,
})
