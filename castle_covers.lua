--castle Mod By Daniel modified by mimilus
--The castle


--stonewall cover
minetest.register_craft({
	output = "castle:cover_stonewall 16",
	recipe = {
		{"castle:saw", "castle:stonewall", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:cover_stonewall", {
	description = "Stonewall Cover",
	tiles = { 'castle_stonewall.png' },
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
})


--Dungeon cover
minetest.register_craft({
	output = "castle:cover_dungeon 16",
	recipe = {
		{"castle:saw", "castle:dungeon_stone", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:cover_dungeon", {
	description = "Dungeonwall Cover",
	tiles = { 'castle_dungeon_stone.png' },
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
})



--Dirt
minetest.register_craft({
	output = "castle:dirt 16",
	recipe = {
		{"castle:saw", "default:dirt", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:dirt", {
	description = "Dirt Cover",
	tiles = { 'default_dirt.png' },
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
})


--Stone

minetest.register_craft({
	output = "castle:stone 16",
	recipe = {
		{"castle:saw", "default:stone", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:stone", {
	description = "Stone Cover",
	drawtype = "nodebox",
	tiles = { 'default_stone.png' },
	inventory_image = 'default_stone.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Cobble

minetest.register_craft({
	output = "castle:cobble 16",
	recipe = {
		{"castle:saw", "default:cobble", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:cobble", {
	description = "Cobble Cover",
	drawtype = "nodebox",
	tiles = { 'default_cobble.png' },
	inventory_image = 'default_cobble.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Sand

minetest.register_craft({
	output = "castle:sand 16",
	recipe = {
		{"castle:saw", "default:sand", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:sand", {
	description = "Sand Cover",
	drawtype = "nodebox",
	tiles = { 'default_sand.png' },
	inventory_image = 'default_sand.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Desert Sand

minetest.register_craft({
	output = "castle:desert_sand 16",
	recipe = {
		{"castle:saw", "default:desert_sand", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:desert_sand", {
	description = "Desert Sand Cover",
	drawtype = "nodebox",
	tiles = { 'default_desert_sand.png' },
	inventory_image = 'default_desert_sand.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Desert Stone

minetest.register_craft({
	output = "castle:desert_stone 16",
	recipe = {
		{"castle:saw", "default:desert_stone", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:desert_stone", {
	description = "Desert Stone Cover",
	drawtype = "nodebox",
	tiles = { 'default_desert_stone.png' },
	inventory_image = 'default_desert_stone.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Brick

minetest.register_craft({
	output = "castle:brick 16",
	recipe = {
		{"castle:saw", "default:brick", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:brick", {
	description = "Brick Cover",
	drawtype = "nodebox",
	tiles = { 'default_brick.png' },
	inventory_image = 'default_brick.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Steel

minetest.register_craft({
	output = "castle:steel 16",
	recipe = {
		{"castle:saw", "default:steelblock", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:steel", {
	description = "Steel Cover",
	drawtype = "nodebox",
	tiles = { 'default_steel_block.png' },
	inventory_image = 'default_steel_block.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Glass

minetest.register_craft({
	output = "castle:glass 16",
	recipe = {
		{"castle:saw", "default:glass", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:glass", {
	description = "Glass Cover",
	drawtype = "nodebox",
	tiles = { 'default_glass.png' },
	inventory_image = 'default_glass.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Stone Brick

minetest.register_craft({
	output = "castle:stonebrick 16",
	recipe = {
		{"castle:saw", "default:stonebrick", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:stonebrick", {
	description = "Stone Brick Cover",
	drawtype = "nodebox",
	tiles = { 'default_stone_brick.png' },
	inventory_image = 'default_stone_brick.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})
--Desert Stone Brick

minetest.register_craft({
	output = "castle:desertstonebrick 16",
	recipe = {
		{"castle:saw", "default:desert_stonebrick", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:desertstonebrick", {
	description = "Desert Stone Brick Cover",
	drawtype = "nodebox",
	tiles = { 'default_desert_stone_brick.png' },
	inventory_image = 'default_desert_stone_brick.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Sand Stone Brick

minetest.register_craft({
	output = "castle:sandstonebrick 16",
	recipe = {
		{"castle:saw", "default:sand_stonebrick", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:sandstonebrick", {
	description = "Sand Stone Brick Cover",
	drawtype = "nodebox",
	tiles = { 'default_sandstone_brick.png' },
	inventory_image = 'default_sandstone_brick.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})
--Tree

minetest.register_craft({
	output = "castle:tree 16",
	recipe = {
		{"castle:saw", "default:tree", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:tree", {
	description = "Tree Cover",
	drawtype = "nodebox",
	tiles = { 'default_tree.png' },
	inventory_image = 'default_tree.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Wood

minetest.register_craft({
	output = "castle:wood 16",
	recipe = {
		{"castle:saw", "default:wood", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:wood", {
	description = "Wood Cover",
	drawtype = "nodebox",
	tiles = { 'default_wood.png' },
	inventory_image = 'default_wood.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Bookshelf

minetest.register_craft({
	output = "castle:bookshelf 16",
	recipe = {
		{"castle:saw", "default:bookshelf", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:bookshelf", {
	description = "Bookshelf Cover",
	drawtype = "nodebox",
	tiles = { 'default_bookshelf.png' },
	inventory_image = 'default_bookshelf.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Sand Stone

minetest.register_craft({
	output = "castle:sandstone 16",
	recipe = {
		{"castle:saw", "default:sandstone", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:sandstone", {
	description = "Sand Stone Cover",
	drawtype = "nodebox",
	tiles = { 'default_sandstone.png' },
	inventory_image = 'default_sandstone.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Obsidian

minetest.register_craft({
	output = "castle:obsidian 16",
	recipe = {
		{"castle:saw", "default:obsidian", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:obsidian", {
	description = "Obsidian Cover",
	drawtype = "nodebox",
	tiles = { 'default_obsidian.png' },
	inventory_image = 'default_obsidian.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})

--Gravel

minetest.register_craft({
	output = "castle:gravel 16",
	recipe = {
		{"castle:saw", "default:gravel", ""},
		{"", "", ""},
		{"", "", ""},
	},
})

minetest.register_node("castle:gravel", {
	description = "Gravel Cover",
	drawtype = "nodebox",
	tiles = { 'default_gravel.png' },
	inventory_image = 'default_gravel.png',
	paramtype = "light",
    paramtype2="facedir",
    node_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
    selection_box={
        type="fixed",
        fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 }
    },
	groups = {choppy=2,dig_immediate=2},
})


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
