instance_destroy();
other.hp -= global.dano  * 2;
global.damage +=global.dano *2;
audio_play_sound(snd_impact, 0, false);
if (global.hp < global.hp_max) {
	global.hp += global.lol;
}
if (global.slow = true) {
	other.spd = 0;
	other._spd = 0;
}
if (global.queimar = true) {
	other.queimando = true;
}