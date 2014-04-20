local castle_cover = {}

--tempo
--
--	{"cornerwall","CornerWall","castle_secret_cornwall_door_inv.png","castle:cornerwall"},
--	{"book","Bookshelf","default_bookshelf.png","castle:bookshelf"},


castle_cover.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
	{"dirt","Dirt","default_dirt.png","default:dirt"},
	{"stone","Stone","default_stone.png","default:stone"},
}

for _, row in ipairs(castle_cover.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local craft_logical = row[4]

-- Cover Definition

minetest.register_node("castle:cover_" ..name, {
	description = desc.. " Cover ",
	inventory_image = inv ,
	tiles = { inv },
    drawtype = "nodebox",
	paramtype = "light",
    paramtype2 = "facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "castle:cover_" ..name.. "8",
	recipe = {
		{"castle:saw", craft_logical ,""},
		{"", "", ""},
		{"", "", ""}
	},
})
end
