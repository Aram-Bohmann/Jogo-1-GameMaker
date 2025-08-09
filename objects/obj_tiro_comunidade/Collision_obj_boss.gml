instance_destroy();
global.hp_boss -= global.dano  * 2;
global.damage +=global.dano * 2;
audio_play_sound(snd_impact, 0, false);
if (global.hp < global.hp_max) {
	global.hp += global.lol;
}
if (global.queimar = true) {
	other.queimando = true;
}