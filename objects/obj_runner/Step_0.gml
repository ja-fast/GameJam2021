move_wrap(true, true, 0);
speed = run_speed;

if (place_meeting(x,y,obj_hurdle)){
	inst = instance_nearest(x,y,obj_hurdle);
	if (inst.placed) {
		speed = run_speed / 5;
	}
	
}
//if(place_meeting(x,y,obj_drink)){
//	inst = instance_nearest(x,y,obj_drink);
//	if (inst.placed) {
//		drink_boosted = true
//		run_speed = base_speed*3
//	}
//}
if(drink_boosted){
	run_speed = base_speed*3
}
if (place_meeting(x,y,obj_mud_puddle)){
	inst = instance_nearest(x,y,obj_mud_puddle);
	if (inst.placed) {
		speed = run_speed /10;
	}
}
if (drink_boosted && run_speed > base_speed){
	run_speed -= 0.01;
	if run_speed < base_speed{
		run_speed = base_speed
		drink_boosted = false
	}
}
