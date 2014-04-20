local castle_cover = {}

castle_cover.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
	{"dirt","Dirt","default_dirt.png","default:dirt"},
	{"stone","Stone","default_stone.png","default:stone"},
	{"cobble","Cobble","default_cobble.png","default:cobble"},
	{"sand","Sand","default_sand.png","default:sand"},
	{"desert_sand","Desert Sand","default_desert_sand.png","default:desert_sand"},
	{"desert_stone","Desert Stone","default_desert_stone.png","default:desert-stone"},
	{"brick","Brick","default_brick.png","default:brick"},
	{"steel","Steel","default_steel_block.png","default:steelblock"},
	{"glass","Glass","default_glass.png","default:glass"},
	{"stonebrick","Stone Brick","default_stone_brick.png","default:stonebrick"},
	{"desert_stone_brick","Desert Stone Brick","default_desert_stone_brick.png","default:desertstonebrick"},
	{"sand_stone_brick","Sand Stone Brick","default_sandstone_brick.png","default:sandstonebrick"},
	{"tree","Tree","default_tree.png","default:tree"},
	{"wood","Wood","default_wood.png","default:wood"},
	{"sand_stone","Sand Stone","default_sandstone.png","default:sandstone"},
	{"obsidian","Obsidian","default_obsidian.png","default:obsidian"},
	{"gravel","Gravel","default_gravel.png","default:gravel"},
	{"pavingstone","Paving Stone","castle_pavement_brick.png","castle:pavement"},
	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
	
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

--Saw
minetest.register_craftitem("castle:saw", {
	description = "Handsaw",
	tiles = { 'coversaw.png' },
	inventory_image = 'coversaw.png',
})

minetest.register_craftitem("castle:sawhandle", {
	description = "Saw Handle",
	tiles = { 'sawhandle.png' },
	inventory_image = 'sawhandle.png',
})

minetest.register_craftitem("castle:sawblade", {
	description = "Saw Blade",
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
