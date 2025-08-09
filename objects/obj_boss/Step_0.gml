if global.hp <= 0 exit;
global.hp_boss += 0.01;
// Upou? Pare
if (global.levelup == true) exit;

if global.hp <= 0 exit;
if (queimando = true and alarm[7] <= 0) {
	alarm[7] = 10
	image_blend = c_red;
}

if instance_exists(obj_player) {
	dir = point_direction(x, y, obj_player.x, obj_player.y);

	hspd = lengthdir_x(_spd, dir);
	vspd = lengthdir_y (spd, dir);
	x += hspd;
	y += vspd;
	if mp_linear_step_object(x, y, 5, par_inimigo) {
		// Ataques-1
		if alarm[0] <= 0 {
			alarm[0] = 240;
		}
		// Ataques-2
		if (alarm[3] <= 0 and ataque_1 = false) {
			alarm[3] = 120;
		}
		// Ataques-3
		if (alarm[4] <= 0) {
			alarm[4] = 240;
		}
		// Ataques-3
		if (alarm[6] <= 0) {
			alarm[6] = 260 * 2;
		}
		if (alarm[1] <= 0 and ataque_1 = true) {
			alarm[1] = 7;
		}
		
			
		// Parar
		if distance_to_object(obj_stop) <= 450 {
			spd = 0;
		} else if  distance_to_object(obj_stop) >= 450 {
			spd = 5;
		}
	}
}

if (global.hp_boss <= 0) {
	instance_create_layer(DEUS.x, DEUS.y, "up", obj_morte);
	instance_destroy();
	global.vencer = true;
	global.xp += 900;
}