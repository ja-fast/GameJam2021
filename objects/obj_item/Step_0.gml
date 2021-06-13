if (mouse_check_button_pressed(mb_left) && can_grab) {
    default_mask = self.mask_index
	self.mask_index = msk_interact;
	if (position_meeting(mouse_x, mouse_y,self)) {
		holding = true;
		if (rotate_when_grabbed){
			self.image_angle = 0
		}
    }
	self.mask_index = default_mask;
}
if (holding){
	x = mouse_x;
    y = mouse_y;
}
if (holding && mouse_check_button_released(mb_left)){
	track_piece = instance_nearest(x,y,obj_track_str_1);
	x = track_piece.x;
	y = track_piece.y;
	holding = false;
	placed = true;
}