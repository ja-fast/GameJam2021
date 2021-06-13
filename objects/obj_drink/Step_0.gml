if (mouse_check_button_pressed(mb_left)) {
    self.mask_index = msk_drink;
	if (position_meeting(mouse_x, mouse_y,self)) {
		holding = true;
    }
	self.mask_index = spr_drink;
}
if (holding){
	x = mouse_x;
    y = mouse_y;
}
if (holding && mouse_check_button_released(mb_left)){
	//occupied = instance_nearest(x,y,obj_track_str_1)
	//if(position_meeting(x, y,occupied)){
	//	x = xstart
	//	y = ystart
	//}
	
	track_piece = instance_nearest(x,y,obj_track_str_1)
	x = track_piece.x
	y = track_piece.y
	holding = false
}