local cornerpillar = {}

cornerpillar.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
--	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
	{"dirt","Dirt","default_dirt.png","default:dirt"},
	{"stone","Stone","default_stone.png","default:stone"},
	{"cobble","Cobble","default_cobble.png","default:cobble"},
--	{"sand","Sand","default_sand.png","default:sand"},
--	{"desert_sand","Desert Sand","default_desert_sand.png","default:desert_sand"},
	{"desert_stone","Desert Stone","default_desert_stone.png","default:desert-stone"},
	{"brick","Brick","default_brick.png","default:brick"},
	{"steel","Steel","default_steel_block.png","default:steelblock"},
--	{"glass","Glass","default_glass.png","default:glass"},
	{"stonebrick","Stone Brick","default_stone_brick.png","default:stonebrick"},
	{"desert_stone_brick","Desert Stone Brick","default_desert_stone_brick.png","default:desertstonebrick"},
	{"sand_stone_brick","Sand Stone Brick","default_sandstone_brick.png","default:sandstonebrick"},
	{"tree","Tree","default_tree.png","default:tree"},
	{"wood","Wood","default_wood.png","default:wood"},
--	{"sand_stone","Sand Stone","default_sandstone.png","default:sandstone"},
	{"obsidian","Obsidian","default_obsidian.png","default:obsidian"},
--	{"gravel","Gravel","default_gravel.png","default:gravel"},
	{"pavingstone","Paving Stone","castle_pavement_brick.png","castle:pavement"},
	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
}

--Corner pillar

for _, row in ipairs(cornerpillar.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:cornerpillars_"..name.."_bottom", {
	    drawtype = "nodebox",
		description = desc.." Corner Pillar Base",
		tiles = {tile},
		groups = {cracky=3,attached_node=1},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.375,0.5},
			{-0.5,-0.375,-0.25,0.25,-0.125,0.5},
			{-0.5,-0.125,0.0625,-0.0625,0.5,0.5}, 
		},
	},
	})
	minetest.register_node("castle:cornerpillars_"..name.."_top", {
	    drawtype = "nodebox",
		description = desc.." Corner Pillar Top",
		tiles = {tile},
		groups = {cracky=3,attached_node=1},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,0.37049,-0.5,0.5,0.49549,0.5},
			{-0.5,0.125,-0.25,0.25,0.375,0.5},
			{-0.5,-0.5,0.0625,-0.0625,0.125,0.5},
		},
	},
	})
	minetest.register_node("castle:cornerpillars_"..name.."_middle", {
	    drawtype = "nodebox",
		description = desc.." Corner Pillar Middle",
		tiles = {tile},
		groups = {cracky=3,attached_node=1},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,0.0625,-0.0625,0.5,0.5},
		},
	},
	})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:cornerpillars_"..name.."_bottom 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:cornerpillars_"..name.."_top 4",
			recipe = {
			{craft_material,craft_material,craft_material},
			{"",craft_material,""},
			{"",craft_material,""} },
		})
	end
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:cornerpillars_"..name.."_middle 4",
			recipe = {
			{craft_material,craft_material},
			{craft_material,craft_material},
			{craft_material,craft_material} },
		})
	end
end

