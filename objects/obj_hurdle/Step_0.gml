if (mouse_check_button_pressed(mb_left)) {
    mask_index = msk_hurdle;
    if (position_meeting(mouse_x, mouse_y,self)) {
        holding = true;
    }
    mask_index = spr_hurdle;
}
if (holding){
	x = mouse_x;
    y = mouse_y;
}
if (holding && mouse_check_button_released(mb_left)){
	track_piece = instance_nearest(x,y,obj_track_str_1)
	x = track_piece.x
	y = track_piece.y
	holding = false
}