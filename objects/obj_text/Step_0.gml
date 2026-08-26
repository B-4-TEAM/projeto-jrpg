if obj_player.interact{
	is_closing = true
	obj_player.controllable = true
}

if is_closing = false{
	box_offset_y = lerp(box_offset_y, 0, .15)
}else{
	box_offset_y = lerp(box_offset_y, 400, .5)
	if box_offset_y >= 390{
		instance_destroy()
		obj_player.in_dialog = false
	}
}