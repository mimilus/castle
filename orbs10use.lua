-- Boilerplate to support localized strings if intllib mod is installed.
local S
if intllib then
    S = intllib.Getter()
else
    S = function(s) return s end
end

--minetest.register_craftitem("castle:orb_day", {
--	description = "Orb of Midday",
--	tiles = {"castle_day.png"},
--	inventory_image = "castle_day.png",
--	wield_image = "castle_day.png",
--	on_use = function()
--			minetest.set_timeofday(0.5)
--	end,
--})

-- ADDED TenPlus1 (Only has 10 uses)
minetest.register_tool("castle:orb_day", {
	description = S("Orb of Midday"),
	inventory_image = "castle_day.png",
	stack_max = 1,

	on_use = function(itemstack, user, pointed_thing)
		itemstack:add_wear(65535/10)
		minetest.set_timeofday(0.5)
	return itemstack
	end
})

--minetest.register_craftitem("castle:orb_night", {
--	description = "Orb of Midnight",
--	tiles = {"castle_night.png"},
--	inventory_image = "castle_night.png",
--	wield_image = "castle_night.png",
--	on_use = function()
--			minetest.set_timeofday(0)
--	end,
--})

-- ADDED TenPlus1 (Only has 10 uses)
minetest.register_tool("castle:orb_night", {
	description = S("Orb of Night"),
	inventory_image = "castle_night.png",
	stack_max = 1,

	on_use = function(itemstack, user, pointed_thing)
		itemstack:add_wear(65535/10)
		minetest.set_timeofday(0)
	return itemstack
	end
})

minetest.register_craft( {
         output = "castle:orb_day",
         recipe = { 
         {"", "default:glass",""},
         {"default:glass", "default:diamondblock","default:glass"},
         {"", "default:glass",""}
         },
})

minetest.register_craft({
	output = "castle:orb_night",
	recipe = {
		{"", "default:obsidian_glass",""},
		{"default:obsidian_glass", "default:mese","default:obsidian_glass"},
                  {"", "default:obsidian_glass",""}
	}
})
