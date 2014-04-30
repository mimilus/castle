local pillar = {}

pillar.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
--	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
--	{"dirt","Dirt","default_dirt.png","default:dirt"},
--	{"stone","Stone","default_stone.png","default:stone"},
--	{"cobble","Cobble","default_cobble.png","default:cobble"},
--	{"sand","Sand","default_sand.png","default:sand"},
--	{"desert_sand","Desert Sand","default_desert_sand.png","default:desert_sand"},
--	{"desert_stone","Desert Stone","default_desert_stone.png","default:desert-stone"},
--	{"brick","Brick","default_brick.png","default:brick"},
--	{"steel","Steel","default_steel_block.png","default:steelblock"},
--	{"glass","Glass","default_glass.png","default:glass"},
--	{"stonebrick","Stone Brick","default_stone_brick.png","default:stonebrick"},
--	{"desert_stone_brick","Desert Stone Brick","default_desert_stone_brick.png","default:desertstonebrick"},
--	{"sand_stone_brick","Sand Stone Brick","default_sandstone_brick.png","default:sandstonebrick"},
--	{"tree","Tree","default_tree.png","default:tree"},
--	{"wood","Wood","default_wood.png","default:wood"},
--	{"sand_stone","Sand Stone","default_sandstone.png","default:sandstone"},
--	{"obsidian","Obsidian","default_obsidian.png","default:obsidian"},
--	{"gravel","Gravel","default_gravel.png","default:gravel"},
	{"pavingstone","Paving Stone","castle_pavement_brick.png","castle:pavement"},
--	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
}

--Standart pillar

for _, row in ipairs(pillar.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:pillars_"..name.."_bottom", {
	    drawtype = "nodebox",
		description = desc.." Pillar Base",
		tiles = {tile},
		groups = {cracky=3,attached_node=1},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.500000,-0.500000,0.500000,-0.375000,0.500000},
			{-0.375000,-0.375000,-0.375000,0.375000,-0.125000,0.375000},
			{-0.250000,-0.125000,-0.250000,0.250000,0.500000,0.250000}, 
		},
	},
	})
	
	minetest.register_node("castle:pillars_"..name.."_top", {
	    drawtype = "nodebox",
		description = desc.." Pillar Top",
		tiles = {tile},
		groups = {cracky=3,attached_node=1},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,0.312500,-0.500000,0.500000,0.500000,0.500000}, 
			{-0.375000,0.062500,-0.375000,0.375000,0.312500,0.375000}, 
			{-0.250000,-0.500000,-0.250000,0.250000,0.062500,0.250000},
		},
	},
	})

	minetest.register_node("castle:pillars_"..name.."_middle", {
	    drawtype = "nodebox",
		description = desc.." Pillar Middle",
		tiles = {tile},
		groups = {cracky=3,attached_node=1},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.250000,-0.500000,-0.250000,0.250000,0.500000,0.250000},
		},
	},
	})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:pillars_"..name.."_bottom 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:pillars_"..name.."_top 4",
			recipe = {
			{craft_material,craft_material,craft_material},
			{"",craft_material,""},
			{"",craft_material,""} },
		})
	end
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:pillars_"..name.."_middle 4",
			recipe = {
			{craft_material,craft_material},
			{craft_material,craft_material},
			{craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:pillars_"..name.."4pillar", {
	    drawtype = "nodebox",
		description = desc.." 4 Pillars",
		tiles = {tile},
		groups = {cracky=3,attached_node=1},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.3125,-0.5,0.3125,0.5,0.5,0.5}, --NodeBox1
			{-0.5,-0.5,0.3125,-0.3125,0.5,0.5}, --NodeBox2
			{-0.5,-0.5,-0.5,-0.3125,0.5,-0.3125}, --NodeBox3
			{0.3125,-0.5,-0.5,0.5,0.5,-0.3125}, --NodeBox4
		},
	},
	})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:pillars_"..name.."4pillar 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:pillars_"..name.."3pillar", {
	    drawtype = "nodebox",
		description = desc.." 3 Pillars",
		tiles = {tile},
		groups = {cracky=3,attached_node=1},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.3125,-0.5,0.3125,0.5,0.5,0.5}, --NodeBox1
			{-0.5,-0.5,0.3125,-0.3125,0.5,0.5}, --NodeBox2
			{-0.5,-0.5,-0.5,-0.3125,0.5,-0.3125}, --NodeBox3
		},
	},
	})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:pillars_"..name.."3pillar 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:pillars_"..name.."2pillar", {
	    drawtype = "nodebox",
		description = desc.." 2 Pillars",
		tiles = {tile},
		groups = {cracky=3,attached_node=1},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.3125,-0.5,0.3125,0.5,0.5,0.5}, --NodeBox1
			{-0.5,-0.5,0.3125,-0.3125,0.5,0.5}, --NodeBox2
		},
	},
	})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:pillars_"..name.."2pillar 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:pillars_"..name.."2pillardiag", {
	    drawtype = "nodebox",
		description = desc.." 2 Pillars Diagonal",
		tiles = {tile},
		groups = {cracky=3,attached_node=1},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.3125,-0.5,0.3125,0.5,0.5,0.5}, --NodeBox1
			{-0.5,-0.5,-0.5,-0.3125,0.5,-0.3125}, --NodeBox2
		},
	},
	})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:pillars_"..name.."2pillardiag 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

	minetest.register_node("castle:pillars_"..name.."1pillar", {
	    drawtype = "nodebox",
		description = desc.." 1 Pillar",
		tiles = {tile},
		groups = {cracky=3,attached_node=1},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{0.3125,-0.5,0.3125,0.5,0.5,0.5}, --NodeBox1
		},
	},
	})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:pillars_"..name.."1pillar 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end

end
