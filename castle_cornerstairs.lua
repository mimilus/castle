
cornerstairs = {}

-- Node will be called cornerstairs:stair_<subname>
function cornerstairs.register_stair(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":cornerstairs:stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5,-0.5,0,0.5,0.5,0.5},
				{0,-0.5,-0.5,0.5,0.5,0},
				{-0.5,-0.5,-0.5,0,0,0},
			},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node(":cornerstairs:stair_" .. subname.."upside_down", {
		replace_name = "cornerstairs:stair_" .. subname,
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'cornerstairs:stair_' .. subname .. ' 4',
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
		},
	})

	-- Flipped recipe for the silly minecrafters
	minetest.register_craft({
		output = 'cornerstairs:stair_' .. subname .. ' 4',
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},
		},
	})
end

-- Node will be called cornerstairs:slab_<subname>
function cornerstairs.register_slab(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":cornerstairs:slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5,-0.5,-0,0,0.5,0.5},
			{-0.5,-0.5,-0.5,0.5,0,0.5},
			},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local n0 = minetest.get_node(p0)
			local n1 = minetest.get_node(p1)
			local param2 = 0

			local n0_is_upside_down = (n0.name == "cornerstairs:slab_" .. subname and
					n0.param2 >= 20)

			if n0.name == "cornerstairs:slab_" .. subname and not n0_is_upside_down and p0.y+1 == p1.y then
				slabpos = p0
				slabnode = n0
			elseif n1.name == "cornerstairs:slab_" .. subname then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				fakestack:set_count(itemstack:get_count())

				pointed_thing.above = slabpos
				local success
				fakestack, success = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if success then
					itemstack:set_count(fakestack:get_count())
				-- Else put old node back
				else
					minetest.set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			-- Upside down slabs
			if p0.y-1 == p1.y then
				-- Turn into full block if pointing at a existing slab
				if n0_is_upside_down  then
					-- Remove the slab at the position of the slab
					minetest.remove_node(p0)
					-- Make a fake stack of a single item and try to place it
					local fakestack = ItemStack(recipeitem)
					fakestack:set_count(itemstack:get_count())

					pointed_thing.above = p0
					local success
					fakestack, success = minetest.item_place(fakestack, placer, pointed_thing)
					-- If the item was taken from the fake stack, decrement original
					if success then
						itemstack:set_count(fakestack:get_count())
					-- Else put old node back
					else
						minetest.set_node(p0, n0)
					end
					return itemstack
				end

				-- Place upside down slab
				param2 = 20
			end

			-- If pointing at the side of a upside down slab
			if n0_is_upside_down and p0.y+1 ~= p1.y then
				param2 = 20
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node(":cornerstairs:slab_" .. subname.."upside_down", {
		replace_name = "cornerstairs:slab_"..subname,
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'cornerstairs:slab_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, recipeitem},
		},
	})
end

-- Replace old "upside_down" nodes with new param2 versions
minetest.register_abm({
	nodenames = {"group:slabs_replace"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		node.name = minetest.registered_nodes[node.name].replace_name
		node.param2 = node.param2 + 20
		if node.param2 == 21 then
			node.param2 = 23
		elseif node.param2 == 23 then
			node.param2 = 21
		end
		minetest.set_node(pos, node)
	end,
})

-- Nodes will be called cornerstairs:{stair,slab}_<subname>
function cornerstairs.register_stair_and_slab(subname, recipeitem, groups, images, desc_stair, desc_slab, sounds)
	cornerstairs.register_stair(subname, recipeitem, groups, images, desc_stair, sounds)
	cornerstairs.register_slab(subname, recipeitem, groups, images, desc_slab, sounds)
end


local gogogo = {}

gogogo.types = {
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

for _, row in ipairs(gogogo.types) do
	local name = row[1]
	local desc = row[2]
	local inv = row[3]
	local craft_logical = row[4]


cornerstairs.register_stair_and_slab(name, craft_logical,
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{inv},
		desc.." Corner Stair",
		desc.." Corner Slab",
		default.node_sound_wood_defaults())
end
