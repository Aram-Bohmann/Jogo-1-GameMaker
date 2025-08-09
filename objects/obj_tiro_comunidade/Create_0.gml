audio_play_sound(snd_disparo, 0, false);
if (instance_exists(par_inimigo)) {
	var _dire = point_direction(x, y, par_inimigo.x, par_inimigo.y)
	image_angle = _dire
	direction = _dire;
	speed = 25;
} else if (instance_exists(obj_boss)) {
	var _dire = point_direction(x, y, obj_boss.x, obj_boss.y)
	image_angle = _dire
	direction = _dire;
	speed = 25;
} else {
	instance_destroy();	
}