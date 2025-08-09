// Checando se o mouse esta porcima da carta
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
mouse_click = mouse_check_button_pressed(mb_left);
if (_mouse_sobre) {
	image_alpha = 1;	
	// Checando se o mouse clicou em mim
	if (mouse_click) {
		global.carta_atual = carta.img_arte;
		global.levelup = false;
		if (global.carta_atual = 0) global.dano += 2;
		if (global.carta_atual = 1) {global.hp_max += 20; global.hp += 20;}
		if (global.carta_atual = 2) global.hp = global.hp_max;
		if (global.carta_atual = 3) global.armadura += 1;
		if (global.carta_atual = 4 and global.velocidade < 15) global.velocidade += 5;
		if (global.carta_atual = 5) {global.jump_height += 1; global.move_spd_max += 0.5}
		if (global.carta_atual = 6) global.municao_max_pistola += 8;
		if (global.carta_atual = 7 and global.recarga_pistola >= 15) global.recarga_pistola -= 15;
		if (global.carta_atual = 8) global.imunidade += 15; 
		if (global.carta_atual = 9) global.explosao += 2; 
		if (global.carta_atual = 10) {global.queimar = true; global.dano_queimar += 1; audio_play_sound(snd_pimentinha, 0, false)}
		if (global.carta_atual = 11) global.jump_max += 1; 
		if (global.carta_atual = 12) global.lol += 0.1;
		if (global.carta_atual = 13) global.moeda = 1;
		if (global.carta_atual = 14) global.penetrar += 2;
		if (global.carta_atual = 15) {global.banana = true; global.dano += 1;}
		if (global.carta_atual = 16) {global.dano += 2; global.dash = true;}
		if (global.carta_atual = 17) {global.clorofila = true;}
		if (global.carta_atual = 18) {global.braco = true;}
		if (global.carta_atual = 19) {global.batata = true; instance_create_layer(999, 999, "Instances", obj_batata);}
		if (global.carta_atual = 22) {global.escudo = true;global.escudo_tempo += 20}
		if (global.carta_atual = 23) {global.slow = true}
		if (global.carta_atual = 24) {global.dano += 2; global.streamer = true;}
		if (global.carta_atual = 25) global.revive = true;
		if (global.carta_atual = 26) {global.egirl = true; global.egirl_forca += 15} 
		if (global.carta_atual = 27) instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_comunidade);
		
		global.morram = true;
	}
	
} else {
	image_alpha = 0.7;
}

if (global.morram = true) {
	instance_destroy()
}

// Mudando a escala
image_xscale = xscale;
image_yscale = yscale;
