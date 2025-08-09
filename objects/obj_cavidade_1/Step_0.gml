if global.hp <= 0 exit;
// Upou? Pare
if (global.levelup == true) {
	if (alarm[0] > 1 and alarm[1] > 1 and alarm[2] > 1 and alarm[3] > 1 and alarm[4] > 1) {
		alarm[0]++;
		alarm[1]++;
		alarm[2]++;
		alarm[3]++;
		alarm[4]++;
	}
	exit;
}

if alarm[0] <= 0 {
	if global.tempo > 180 {
		alarm[0] = 180
	} else if global.tempo = 500 {
		alarm[0] = 100
	} else {
		alarm[0] = 260
	}
	if global.tempo < 1 {
		alarm[0] = 60
	}
}


if global.tempo >= 90 {
	if alarm[1] <= 0 {
	if global.tempo < 180 {
		alarm[1] = 200
	} else if global.tempo = 500 {
		alarm[1] = 100
	}else {
		alarm[1] = 260
	}
}
}

if global.tempo >= 180 {
	if alarm[2] <= 0 {
		alarm[2] = 600
	}
}

if global.tempo >= 280 {
	if alarm[3] <= 0 {
		alarm[3] = 500
	}
}

if global.tempo >= 410 {
	if alarm[4] <= 0 {
		alarm[4] = 260
	}
}
if global.tempo >= 480 {
	if alarm[5] <= 0 {
		alarm[5] = 220
	}
}
if global.tempo >= 600 and global.soum = false {
	global.soum = true;
	instance_create_layer(x, y,"Instances", obj_boss)
	instance_destroy();
}