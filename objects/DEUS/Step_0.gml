if (global.levelup == true and uma_vez = true) {
	// Zerando as variavéis globais 
	cria_baralho()
	preenche_mao()
	
	for (var i = 0; i < 3; i++) {
		var _carta = instance_create_layer(x - 100 + 100 * i, y, "up", obj_carta);
		_carta.carta = global.mao[i];
	}
	
	// Zerando as variavéis globais 
	global.baralho = []; 
	global.mao = [];
	uma_vez = false;
}

if (global.xp >= global.xp_max) {
	audio_play_sound(snd_card, 10, false);
	global.xp -= global.xp_max;
	global.xp_max = global.xp_max * 1.2
	global.levelup = true;
	global.level++;
	uma_vez = true;
	global.hp_max += 2;
	global.hp += 2;
	global.nivel += 1;
}
if (global.hp > global.hp_max) {
	global.hp = global.hp_max
}


if global.tempo <= 300 {
	#region Disparo
	global.aumento_tiro = 1;
	// Dano Pepino
	global.dano_pepino = 1 + (global.tempo / 180);
	// Dano planaria
	global.dano_planaria = 2 + (global.tempo / 180);
	// Dano abrobora
	global.dano_abrobora = 40 + (global.tempo / 180);
	// Dano cosmevidro
	global.dano_cosmevidro = 2 + global.aumento_tiro + (global.tempo / 180);
	#endregion

	#region Inimigo
	// Cosmevidro
	global.hp_cosmevidro = 50 + (global.tempo / 180);
	global.xxp = 2 + (global.tempo / 180);

	// Desmonetização
	global.hp_desmonetizacao = 200 + (global.tempo / 180);
	global.dano_desmonetizacao = 2 + (global.tempo / 180);
	global.xp_desmonetizacao = 100+ (global.tempo / 180);

	// Abrobora
	global.hp_abrobora = 400+ (global.tempo / 180);
	global.xp_abrobora = 200 + (global.tempo / 180);

	// Pepino
	global.hp_pepino = 6 + (global.tempo / 180);
	global.xp_pepino = 1 + (global.tempo / 180);

	// Planaria filho
	global.hp_planaria_filho = 12 + (global.tempo / 180);
	global.xp_planaria_filho = 1 + (global.tempo / 180);

	// Planaria pai
	global.hp_planaria_pai = 20 + (global.tempo / 180);
	global.xp_planaria_pai = 1 + (global.tempo / 180);

	// Regia
	global.hp_regia = 100 + (global.tempo / 180);
	global.xp_regia = 5 + (global.tempo / 180);

	#endregion
} else {
	// Dano abrobora
	global.dano_abrobora = 50 + (global.tempo / 180);
	// Dano cosmevidro
	global.dano_cosmevidro = 2 + global.aumento_tiro + (global.tempo / 180);
	// Cosmevidro
	global.hp_cosmevidro = 50 + (global.tempo / 180);
	global.xxp = 2 + (global.tempo / 180);

	// Desmonetização
	global.hp_desmonetizacao = 300 + (global.tempo / 180);
	global.dano_desmonetizacao = 2 + (global.tempo / 180);
	global.xp_desmonetizacao = 100+ (global.tempo / 180);

	// Abrobora
	global.hp_abrobora = 500+ (global.tempo / 180);
	global.xp_abrobora = 200 + (global.tempo / 180);
	
	// Pepino
	global.hp_pepino = 6 * 3
	global.xp_pepino = 1 * 3

	// Planaria filho
	global.hp_planaria_filho = 12 * 3
	global.xp_planaria_filho = 1 * 3

	// Planaria pai
	global.hp_planaria_pai = 20 * 3
	global.xp_planaria_pai = 1 * 3

	global.dano_pepino = 10
	// Dano planaria
	global.dano_planaria = 20
	// Regia
	global.hp_regia = 100 * 3
	global.xp_regia = 5 * 3
}



