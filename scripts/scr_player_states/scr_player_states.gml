// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function player_state_idle(){

#region Controles
// Controles 
var key_left = keyboard_check(ord("A")) or  keyboard_check(vk_left);
var key_right = keyboard_check(ord("D")) or  keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(ord("W")) or  keyboard_check_pressed(vk_up);
var key_escalada = keyboard_check(ord("W")) or  keyboard_check(vk_up);
var key_descida = keyboard_check(ord("S")) or  keyboard_check(vk_down);
var key_dash = keyboard_check_pressed(vk_shift);
	
#endregion

sprite_index = spr_player_idle;

#region Movimento e Gravidade
// Movimento direita ou esquerda
var move = key_right - key_left != 0;
	
// Gravidade e queda min e max
vspd += grv;
vspd = clamp(vspd, vspd_min, vspd_max);

// Movimento
if (move) {
	sprite_index = spr_player_walk;
	move_dir = point_direction( 0, 0, key_right - key_left, 0);
	move_spd = approach(move_spd, global.move_spd_max, acc);
} else {
	sprite_index = spr_player_idle;
	move_spd = approach(move_spd, 0, dcc);
}
	
can_move = approach(can_move, 0, 0.4);
	
if (can_move <= 0) hspd = lengthdir_x(move_spd, move_dir);
	
// Virar pro lado
if (hspd != 0) {
	image_xscale = sign(hspd);
}
#endregion
	
#region Colisão com parede e chão
// Colisão com paredes e chão
var ground = place_meeting(x, y+1, obj_pai_bloco);	
var wall = place_meeting(x + 1, y, obj_pai_bloco) || place_meeting(x - 1, y, obj_pai_bloco);
var corda = place_meeting(x, y, obj_corda);
	
// Se colidir com chão, reseta os pulos e troca de sprites
if (ground) {
	jump_count = global.jump_max;
	coyote_time = coyote_time_max;
} else {
		coyote_time--;
		if (vspd < 0) {
			// sprite_index = spr_player_jump;
		} else if (vspd > 0) {
			// sprite_index = spr_player_fall;
		}
}
if (corda) {
	vspd = 0
	if (key_escalada) {
		vspd -= 2;
	}
	if (key_descida) {
		vspd += 2;
	}
}
#endregion
	
#region Pulo, dash e queda rápida
// Pulo
if (key_jump and coyote_time > 0 || key_jump and jump_count > 0) {
	jump_count--;
	vspd = 0;
	vspd -= global.jump_height;
}

if global.dash = true {
	// Se usar dash, troca de estado
	if (key_dash and dash) {
		hspd = 0;
		vspd = 0;
		dash_time = 0;
		dash = false;
		alarm[0] = dash_delay;
		audio_play_sound(snd_dash, 0, false);
		state = player_state_dash;
	}
}


#endregion
	

if (global.hp <= 0) {
	if (global.revive = true) {
		global.revive = false;
		global.hp = global.hp_max
	} else {
		instance_destroy();
		instance_create_layer(DEUS.x, DEUS.y, "up", obj_morte);
	}
}
global.dash_voa = false;
}

// Estado de dash
function player_state_dash(){
	global.dash_voa = true;
	hspd = lengthdir_x(dash_force, move_dir);
	dash_time = approach(dash_time,dash_distance, 1);
	instance_create_layer(x, y, "Instances", obj_player_dash_rastro)
	if (dash_time >= dash_distance) {
		state = player_state_idle;
	}
}
