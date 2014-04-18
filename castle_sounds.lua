--Echo sound for secret wall


function castle.stone_echo(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_hard_echo_footstep", gain=0.5}
	table.dug = table.dug or
			{name="default_hard_echo_footstep", gain=1.0}
	default.node_sound_defaults(table)
	return table
end
