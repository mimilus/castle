--UNLOCKED SECRET DOORS

local secret_door = {}

secret_door.types = {
	{"stonewall","StoneWall","castle_secret_stonewall_door_inv.png","castle_secret_stonewall_door_top","castle_secret_stonewall_door_bottom","castle:cover_stonewall","castle:cover_stonewall"},
	{"dungeonwall","DungeonWall","castle_secret_dungeon_door_inv.png","castle_secret_dungeon_door_top","castle_secret_dungeon_door_bottom","castle:cover_dungeon","castle:cover_dungeon"},
	{"cornwall","CornWall","castle_secret_cornwall_door_inv.png","castle_secret_cornwall_door_top","castle_secret_cornwall_door_bottom","castle:cover_cornerwall","castle:cover_cornerwall"},
	{"pavement","PavingStone","castle_secret_pavement_door_inv.png","castle_secret_pavement_door_top","castle_secret_pavement_door_bottom","castle:cover_pavement","castle:cover_pavement"},
	{"book","Bookshelf","castle_secret_book_door_inv.png","castle_secret_book_door_top","castle_secret_book_door_bottom","castle:cover_bookshelf","castle:cover_bookshelf"},
	{"straw_bale","Straw Bale","castle_secret_door_straw_bale_inv.png","castle_secret_door_straw_bale_top","castle_secret_door_straw_bale_top","castle:cover_straw_bale","castle:cover_straw_bale"},
	{"wood","Wood","castle_secret_door_wood_inv.png","castle_secret_door_wood_top","castle_secret_door_wood_bottom","castle:cover_wood","castle:cover_wood"},
}

for _, row in ipairs(secret_door.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local tile = row[4]
	local tile2 = row[5]
	local craft_material = row[6]
	local craft_logical = row[7]
	
	-- Node Definition

minetest.register_craft({
	output = "castle:secret_door" ..name,
	recipe = {
		{craft_logical, craft_logical},
		{craft_logical, craft_logical},
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
			output = "castle:secret_door" ..name.. " 1",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end

