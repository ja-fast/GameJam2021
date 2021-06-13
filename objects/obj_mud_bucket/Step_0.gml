can_grab = false
event_inherited()
if (mouse_check_button_pressed(mb_left)) {
	if (position_meeting(mouse_x, mouse_y,self)) {
		inst = instance_create_layer(mouse_x, mouse_y,"instances",obj_mud_puddle)
		inst.holding = true
    }
}

