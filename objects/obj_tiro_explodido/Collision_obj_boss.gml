instance_destroy();
audio_play_sound(snd_impact, 0, false);
global.hp_boss -= global.dano * 2;
global.damage += global.dano *2;