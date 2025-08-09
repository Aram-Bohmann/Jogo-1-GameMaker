var key_down = keyboard_check_pressed(ord("S"));
var key_up = keyboard_check_pressed(ord("W"));
var key_enter = keyboard_check(vk_space);

if (key_down) {
	index++;	
}
if (key_up) {
	index--;	
}
if (index > op_max - 1) { 
	index = 0;
}
if (index < 0) { 
	index = op_max-1;
}

if (key_enter) {
	if (index = 0) {
		room_goto(sala);
	} else if (index = 1) {
	
	} else if (index = 2) {
		game_end();
	}
}
