// Upou? Pare
if (global.levelup == true or global.vencer == true) exit;

if instance_exists(obj_player) {
	// Posição da arma
	x = obj_player.x + 12;
	y = obj_player.y - 3;

	// Giro da arma
	var _dire = point_direction(x, y, mouse_x, mouse_y)
	image_angle = _dire


	// Trocar de mão
	var _intervalo = _dire == clamp(_dire, 90, 270)

	if (_intervalo)
	{
		x = obj_player.x - 12;
		image_yscale = -1
	} else{
		image_yscale = 1
	}

	if global.clorofila = false {
		// Atirar
		if municao >= 1 {
			if mouse_check_button(mb_left) {
				if munic = 0 {
					audio_play_sound(snd_disparo, 0, false);
					munic = 1;
					instance_create_layer(x, y, "Instances", obj_tiro)
					alarm[0] = 20 - global.velocidade;
					municao -= 1;
				}
			}
			if keyboard_check(vk_space) {
				if munic = 0 {
					audio_play_sound(snd_disparo, 0, false);
					munic = 1;
					instance_create_layer(x, y, "Instances", obj_tiro)
					alarm[0] = 20 - global.velocidade;
					municao -= 1;
				}
			}
			if global.streamer = true {
				if munic = 0 {
					audio_play_sound(snd_disparo, 0, false);
					munic = 1;
					instance_create_layer(x, y, "Instances", obj_tiro)
					alarm[0] = 20 - global.velocidade;
					municao -= 1;
				}
			}
		} else { // recarregar
			if alarm[1] <= 0 {
				alarm[1] = global.recarga_pistola;
			}
		} 
			
	} else if global.clorofila = true {
		// Atirar
		if municao >= 1 {
			if mouse_check_button(mb_left) {
				if munic = 0 {
					audio_play_sound(snd_disparo, 0, false);
					munic = 1;
					instance_create_layer(x, y, "Instances", obj_tiro_clorofila)
					alarm[0] = 20 - global.velocidade;
					municao -= 1;
				}
			}
			if keyboard_check(vk_space) {
				if munic = 0 {
					audio_play_sound(snd_disparo, 0, false);
					munic = 1;
					instance_create_layer(x, y, "Instances", obj_tiro_clorofila)
					alarm[0] = 20 - global.velocidade;
					municao -= 1;
				}
			}
			if global.streamer = true {
				if munic = 0 {
					audio_play_sound(snd_disparo, 0, false);
					munic = 1;
					instance_create_layer(x, y, "Instances", obj_tiro_clorofila)
					alarm[0] = 20 - global.velocidade;
					municao -= 1;
				}
			}
		} else { // recarregar
			if alarm[1] <= 0 {
				alarm[1] = global.recarga_pistola;
			}
		} 
	}
		
} else instance_destroy();