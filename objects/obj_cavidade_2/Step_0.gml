if global.hp <= 0 exit;
// Upou? Pare
if (global.levelup == true) {
	if (alarm[0] > 1 and alarm[1] > 1 and alarm[2] > 1 and alarm[3] > 1) {
	alarm[0]++;
	alarm[1]++;
	alarm[2]++;
	alarm[3]++;
	}
	exit;
}

if global.tempo >= 60 {
	sprite_index = spr_cavidade_aberta
	if alarm[0] <= 0 {
	if global.tempo < 180 {
		alarm[0] = 180
	} else if global.tempo = 500 {
		alarm[0] = 100
	} else {
		alarm[0] = 260
	}
}
}

if global.tempo >= 150 {
	if alarm[1] <= 0 {
	if global.tempo < 180 {
		alarm[1] = 200
	} else if global.tempo = 500 {
		alarm[1] = 100
	} else {
		alarm[1] = 260
	}
}
}

if global.tempo >= 250 {
	if alarm[2] <= 0 {
		alarm[2] = 500
	}
}

if global.tempo >= 380 {
	if alarm[3] <= 0 {
		alarm[3] = 260
	}
}

if global.tempo >= 460 {
	if alarm[4] <= 0 {
		alarm[4] = 220
	}
}
if global.tempo >= 600 and instance_exists(obj_boss) {
	instance_destroy();
}