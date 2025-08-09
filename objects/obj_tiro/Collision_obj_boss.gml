if (destroy >= 2) {
	instance_destroy()
}
if (other.image_alpha = 1) {
	destroy += 1;
	audio_play_sound(snd_impact, 0, false);
	global.hp_boss -= global.dano;
	global.damage +=global.dano;
	if (global.hp < global.hp_max) {
	global.hp += global.lol;
}
}
other.alarm[5] = 1;
other.image_alpha = 0.7

if (global.queimar = true) {
	other.queimando = true;
}