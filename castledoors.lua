--NORMALS DOORS
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
	only_placer_can_open = true,
})

minetest.register_craft({
	output = "castle:oak_door",
	recipe = {
		{"default:tree", "default:tree"},
		{"default:tree", "default:tree"},
		{"default:tree", "default:tree"}
	}
})
doors:register_door("castle:oak_door", {
	description = "Oak Door",
	inventory_image = "castle_oak_door_inv.png",
	groups = {choppy=2,door=1},
	tiles_bottom = {"castle_oak_door_bottom.png", "door_oak.png"},
	tiles_top = {"castle_oak_door_top.png", "door_oak.png"},
	only_placer_can_open = true,
})


--MOSSY DOORS

minetest.register_craft({
	output = "castle:mossy_jail_door",
	recipe = {
		{"castle:jail_door", ""},
		{"", ""},
		{"", ""}
	}
})
doors:register_door("castle:mossy_jail_door", {
	description = "Mossy Jail Door",
	inventory_image = "mossy_castle_jail_door_inv.png",
	groups = {cracky=2,door=1},
	tiles_bottom = {"mossy_castle_jail_door_bottom.png", "door_jail.png"},
	tiles_top = {"castle_jail_door_top.png", "door_jail.png"},
	only_placer_can_open = true,
})

minetest.register_craft({
	output = "castle:mossy_oak_door",
	recipe = {
		{"castle:oak_door", ""},
		{"", ""},
		{"", ""}
	}
})
doors:register_door("castle:mossy_oak_door", {
	description = "Mossy Oak Door",
	inventory_image = "mossy_castle_oak_door_inv.png",
	groups = {choppy=2,door=1},
	tiles_bottom = {"mossy_castle_oak_door_bottom.png", "door_oak.png"},
	tiles_top = {"castle_oak_door_top.png", "door_oak.png"},
	only_placer_can_open = true,
})


