if (holding){
	x = mouse_x;
    y = mouse_y;
}
if (holding && mouse_check_button_released(mb_left)){
	track_piece = instance_nearest(x,y,obj_track_str_1);
	x = track_piece.x;
	y = track_piece.y;
	holding = false;
	image_speed = 1;
	sprite_index = spr_mud_puddle;
	placed = true;
}