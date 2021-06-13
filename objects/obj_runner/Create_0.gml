randomize()
depth = -100
sprite_index = choose(spr_runner_1,spr_runner_2)
base_speed = irandom_range(1,3)
run_speed = base_speed
speed = base_speed
direction = 0
image_speed = 1
drink_boosted = false
finished = 0

timer = 0;
//draw_text(x-10 , y, "Zane: " + string(timer));
//switch (room) {
	
//	case rm_game:
//	  draw_text(x-10 , y, "Zane: " + string(timer));
//      //var parent = object_get_parent(obj_runner);
//      //var px = parent.x;
//      //var py = parent.y;
//      //draw_text(px-10 , py, string(timer/60) + ":" + string(timer));
//      break;
//  case rm_start:
//	case rm_gameover:
//	case rm_win:
//	   break;
//}
