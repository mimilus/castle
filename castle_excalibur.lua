--EXCALIBUR

minetest.register_node("castle:excalibur", {
	description = "Excalibur in the rock",
	drawtype =  "nodebox",
	tiles = {'excalibur-top.png','excalibur-front.png','excalibur-front.png','excalibur-front.png','excalibur-front.png','excalibur-front.png'},
	inventory_image = "excalibur-front.png",
--	wield_image = "default_torch_on_floor.png",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box={
        type= "fixed",
        fixed = {{-0.5,-0.5,-0.5,0.5,-0.375,0.5},{-0.25,-0.375,-0.25,0.25,-0.25,0.25},{-0.125,-0.25,-0.125,0.125,-0.125,0.125},{-0.0625,-0.125,-0.0625,0.0625,0.1875,0.0625},{-0.25,0.140625,-0.0625,0.25,0.234375,0.0625},{-0.0625,0.1875,-0.0625,0.0625,0.5,0.0625}},
		selection_box= {{-0.5,-0.5,-0.5,0.5,-0.375,0.5},{-0.25,-0.375,-0.25,0.25,-0.25,0.25},{-0.125,-0.25,-0.125,0.125,-0.125,0.125},{-0.0625,-0.125,-0.0625,0.0625,0.1875,0.0625},{-0.25,0.140625,-0.0625,0.25,0.234375,0.0625},{-0.0625,0.1875,-0.0625,0.0625,0.5,0.0625},}
	},
	sunlight_propagates = true,
--	is_ground_content = false,
--	walkable = true,
	light_source = LIGHT_MAX-1,
	groups = {choppy=2,dig_immediate=3,flammable=1,attached_node=1,hot=2},
--	legacy_wallmounted = true,
--	sounds = default.node_sound_defaults(),
})
