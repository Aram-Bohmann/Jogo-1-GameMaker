if (global.tempo >= 600) instance_destroy();
if global.hp <= 0 exit;
// Upou? Pare
if (global.levelup == true) exit;

if instance_exists(obj_player) {
	dir = point_direction(x, y, obj_player.x, obj_player.y);
	image_angle = dir - 90
	hspd = lengthdir_x(_spd, dir);
	vspd = lengthdir_y (spd, dir);
	image_alpha = 1;
	x += hspd;
	y += vspd;
	if mp_linear_step_object(x, y, 5, par_inimigo) {
		if (alarm[0] <= 0) {
			if (alarm[1] <= 0) {
				alarm[1] = random_range(100, 140) - 20;
			}

			if distance_to_object(obj_stop) <= 400 {
				spd = 0;
			} else if  distance_to_object(obj_stop) >= 500 {
				spd = 1;
			}
		}
	}
}
if (hp <= 0) {
	for (var i = 0; i < global.explosao; i += 1) {
		instance_create_layer(x, y, "Instances", obj_tiro_explodido)
	}
	if (global.moeda >= 1) {
		for (var i = 0; i < global.moeda; i += 1) {
			instance_create_layer(x, y, "Instances", obj_moeda);
	}
	}
	global.planaria += 1;
	instance_destroy();
	audio_play_sound(snd_moleu, 1, false);
	global.xp += global.xp_planaria_filho;
}