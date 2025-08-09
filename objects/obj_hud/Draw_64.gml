draw_set_halign(fa_left);
draw_set_font(fnt_time);

if (global.levelup == false) {
	// Vida
	draw_sprite(spr_hp_hud, -1, 70, 10);
	draw_sprite_ext(spr_hp_bar, -1, 70, 10, global.hp/global.hp_max, 1, 0, c_white, 1);
	draw_set_color(c_red)
	draw_text(5, 7, global.hp);

	//Tempo
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(130, 110, global.tempo);
	draw_set_halign(fa_left);
	if (global.moeda > 0) {
		draw_set_color(c_yellow);
		draw_text(210, 110, global.moeda_quantidade);
	}

	// Xp
	draw_sprite(spr_xp_hud, -1,70, 60);
	draw_sprite_ext(spr_xp_bar, -1, 70, 60, global.xp/global.xp_max, 1, 0, c_white, 1);
	draw_set_color(c_blue)
	draw_text(5, 55, global.xp);
	draw_text(5, 105, global.nivel);
}




if (global.hp <= 0) {
	draw_set_font(fnt_morte);
	draw_set_halign(fa_center);
	draw_set_color(c_white)
	draw_text(198 * 4, 15 * 4, "FALECEU");
	draw_set_font(fnt_morte_);
	draw_set_halign(fa_left);
	draw_text(135 * 4, 40 * 4, "Pepinos Eliminados: ");
	draw_text(250 * 4, 40 * 4, global.pepino);
	draw_text(135 * 4, 55 * 4, "Planaria Eliminados: ");
	draw_text(250 * 4, 55 * 4, global.planaria);
	draw_text(135 * 4, 70 * 4, "Vitorias R. Eliminados: ");
	draw_text(250 * 4, 70 * 4, global.vitoria);
	draw_text(135 * 4, 85 * 4, "Cosme Vidro Eliminados: ");
	draw_text(250 * 4, 85 * 4, global.cosmevidro);
	draw_text(135 * 4, 100 * 4, "Desmonetizacao Eliminados: ");
	draw_text(250 * 4, 100 * 4, global.desmonetizacao);
	draw_text(135 * 4, 115 * 4, "Abobora Eliminados: ");
	draw_text(250 * 4, 115 * 4, global.abrobrora);
	draw_text(135 * 4, 130 * 4, "Total: ");
	var kills = global.abrobrora + global.desmonetizacao + global.cosmevidro + global.vitoria + global.planaria + global.pepino;
	draw_text(250 * 4, 130 * 4, kills);
	draw_text(135 * 4, 145 * 4, "Dano Causado: ");
	draw_text(250 * 4, 145 * 4, global.damage);
	draw_text(135 * 4, 160 * 4, "Dano Sofrido: ");
	draw_text(250 * 4, 160 * 4, global.sofrido);
	draw_text(135 * 4, 175 * 4, "Tempo: ");
	draw_text(250 * 4, 175 * 4, global.tempo);
	draw_set_halign(fa_center);
	draw_text(198 * 4, 190 * 4, "Aperte esc para sair");
}
if global.hp <= 0 exit;



if global.tempo >= 600 and instance_exists(obj_boss){
	draw_sprite(spr_bos_hp_hud, -1,275 * 4, 20);
	draw_sprite_ext(spr_boss_hp_bar, -1, 275 * 4, 20, global.hp_boss/global.hp_boss_max, 1, 0, c_white, 1);
	draw_set_color(c_white)
	draw_text(220*4, 5, "Vida do Boss:" );
}

if global.tempo >= 600 and !instance_exists(obj_boss) and global.vencer = true {
	draw_set_font(fnt_morte);
	draw_set_halign(fa_center);
	draw_set_color(c_white)
	draw_text(198 * 4, 15 * 4, "VITORIA");
	draw_set_font(fnt_morte_);
	draw_set_halign(fa_left);
	draw_text(135 * 4, 40 * 4, "Pepinos Eliminados: ");
	draw_text(250 * 4, 40 * 4, global.pepino);
	draw_text(135 * 4, 55 * 4, "Planaria Eliminados: ");
	draw_text(250 * 4, 55 * 4, global.planaria);
	draw_text(135 * 4, 70 * 4, "Vitorias R. Eliminados: ");
	draw_text(250 * 4, 70 * 4, global.vitoria);
	draw_text(135 * 4, 85 * 4, "Cosme Vidro Eliminados: ");
	draw_text(250 * 4, 85 * 4, global.cosmevidro);
	draw_text(135 * 4, 100 * 4, "Desmonetizacao Eliminados: ");
	draw_text(250 * 4, 100 * 4, global.desmonetizacao);
	draw_text(135 * 4, 115 * 4, "Abobora Eliminados: ");
	draw_text(250 * 4, 115 * 4, global.abrobrora);
	draw_text(135 * 4, 130 * 4, "Total: ");
	var kills = global.abrobrora + global.desmonetizacao + global.cosmevidro + global.vitoria + global.planaria + global.pepino;
	draw_text(250 * 4, 130 * 4, kills);
	draw_text(135 * 4, 145 * 4, "Dano Causado: ");
	draw_text(250 * 4, 145 * 4, global.damage);
	draw_text(135 * 4, 160 * 4, "Dano Sofrido: ");
	draw_text(250 * 4, 160 * 4, global.sofrido);
	draw_text(135 * 4, 175 * 4, "Tempo: ");
	draw_text(250 * 4, 175 * 4, global.tempo);
	draw_set_halign(fa_center);
	draw_text(198 * 4, 190 * 4, "Aperte esc para sair");
}











