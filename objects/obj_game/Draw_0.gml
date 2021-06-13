switch (room) {

  case room0:
    draw_text(1200, 20, "HEAT: " + string(heat));
	if (diff != SENTINEL){
		draw_text(1200, 40, "DIFF: " + string(diff));
	}
    break;

  case rm_start:
    draw_set_halign(fa_center);
    var c = c_red;
    draw_text_transformed_colour(room_width / 2, 100, "COMMUNIST TIES", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 200, 
    @"Comarade, the Olympics offends our Communist VALUES!!!
	You must make sure there are no winners nor losers.
    
	Have all runners cross the finish line together!
    CLICK AND DRAG: obstacles to slow runners down or power-ups to speed them up.
    
    >>PRESS ENTER TO START<<");
    draw_set_halign(fa_left);
	break;

  case rm_win:
    draw_set_halign(fa_center);
    var c = c_maroon;
    draw_text_transformed_colour(room_width / 2, 200,
	"CONGRATULATIONS COMRADE,\n YOU HAVE SUCCEEDED IN YOUR MISSION!", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 350, "FINAL TIME DIFFERENCE: " + string(diff));
    draw_text(room_width / 2, 400, "PRESS ENTER TO BEGIN THE NEXT EVENT");
    draw_set_halign(fa_left);
    break;

  case rm_gameover:
    draw_set_halign(fa_center);
    var c = c_lime;
    draw_text_transformed_colour(room_width / 2, 150,
	"EXTRA! EXTRA!\n THE WESTERN VALUES OF INDIVIDUALISM WIN THE DAY", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 350, "FINAL TIME DIFFERENCE: " + string(diff));
    draw_text(room_width / 2, 400, "PRESS ENTER TO RESTART");
    draw_set_halign(fa_left);
    break;
}
