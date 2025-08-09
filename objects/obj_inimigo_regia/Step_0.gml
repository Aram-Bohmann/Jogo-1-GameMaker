if (global.tempo >= 600) instance_destroy();
if global.hp <= 0 exit;
// Upou? Pare
if (global.levelup == true){
	image_index = 0;
	exit;
}
image_index = 0;

if (hp  <= 0) {
	for (var i = 0; i < global.explosao; i += 1) {
		instance_create_layer(x, y, "Instances", obj_tiro_explodido)
	}
	instance_destroy();
	global.vitoria += 1;
	audio_play_sound(snd_moleu, 1, false);
	global.xp += global.xp_regia;
}
