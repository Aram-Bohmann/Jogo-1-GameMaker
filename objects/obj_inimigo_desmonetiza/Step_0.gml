if (global.tempo >= 600) instance_destroy();
if global.hp <= 0 exit;
// Upou? Pare
if (global.levelup == true) exit;

if instance_exists(obj_player) {
	dir = point_direction(x, y, obj_player.x, obj_player.y);
	hspd = lengthdir_x(_spd, dir);
	vspd = lengthdir_y (spd, dir);
	image_alpha = 1;
	x += hspd;
	y += vspd;
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
	instance_destroy();
	audio_play_sound(snd_moleu, 1, false);
	global.desmonetizacao += 1;
	global.xp += global.xp_desmonetizacao;
}