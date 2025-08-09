
if (destroy >= 2) {
	instance_destroy()
}
if (other.image_alpha = 1) {
	destroy += 1;
	audio_play_sound(snd_impact, 0, false);
	other.hp -= global.dano;
	global.damage +=global.dano;
	if (global.hp < global.hp_max) {
	global.hp += global.lol;
}
}
other.alarm[5] = 2;
other.image_alpha = 0.7
	

if (global.slow = true) {
	other.spd = 0;
	other._spd = 0;
}
if (global.queimar = true) {
	other.queimando = true;
}
