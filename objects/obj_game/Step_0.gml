if (keyboard_check_pressed(vk_enter)) {
  switch(room) {
    case rm_start:
		diff = SENTINEL;
      room_goto(room0);
      break;
    case rm_win:
    case rm_gameover:
      //game_restart();
	  diff = SENTINEL;
	  room_goto(rm_start);
      break;
    }
}

if (room == room0) {
	n_finished = player1.finished + player2.finished + player3.finished

	if (n_finished == 3){
		mi = min(player1.timer, player2.timer, player3.timer);
		ma = max(player1.timer, player2.timer, player3.timer);
		diff = ma - mi;
    }
	if (diff == SENTINEL){
	}
  else if (diff >= -0.5 && diff <= 1.) {
	  heat += 1;
    room_goto(rm_win);
  }
  else {
	   heat += 1;
    room_goto(rm_gameover);
  }
}
