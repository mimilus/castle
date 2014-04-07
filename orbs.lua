-- Boilerplate to support localized strings if intllib mod is installed.
local S
if intllib then
    S = intllib.Getter()
else
    S = function(s) return s end
end

minetest.register_craftitem("castle:orb_day", {
	description = S("Orb of Midday"),
	tiles = {"castle_day.png"},
	inventory_image = "castle_day.png",
	wield_image = "castle_day.png",
	on_use = function()
			minetest.set_timeofday(0.5)
	end,
})

minetest.register_craftitem("castle:orb_night", {
	description = S("Orb of Midnight"),
	tiles = {"castle_night.png"},
	inventory_image = "castle_night.png",
	wield_image = "castle_night.png",
	on_use = function()
			minetest.set_timeofday(0)
	end,
})

minetest.register_craft( {
         output = "castle:orb_day",
         recipe = { 
         {"", "default:glass",""},
         {"default:glass", "default:mese_crystal","default:glass"},
         {"", "default:glass",""}
         },
})

minetest.register_craft({
	output = "castle:orb_night",
	recipe = {
		{"", "default:glass",""},
		{"default:glass", "default:obsidian","default:glass"},
                  {"", "default:glass",""}
	}
})
