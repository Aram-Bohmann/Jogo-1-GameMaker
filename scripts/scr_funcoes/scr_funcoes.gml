// Deixando o jogo aleatorio
randomize(); 

function desenha_carta(){
	// Desenhando a si mesmo
	draw_sprite_ext(spr_carta_fundo, carta.img_fundo, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	// Desenhando o icone
	draw_sprite_ext(spr_carta_icone, carta.img_arte, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	// Desenhando o titulo
	draw_sprite_ext(spr_carta_titulo, carta.img_titulo, x, y , image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

function cria_baralho() {

		// CRIANDO AS CARTAS
		// var _carta = new cria_carta(_nome, _descricao, _img_arte, _img_fundo, _img_titulo)
		var bomba_card = new cria_carta("Bomba", "Injete rapidamente\nDano + 3", 0, 0, 0);
		var pastel_card = new cria_carta("Pastel", "Vida + 20", 1, 0, 0);
		var spray_card = new cria_carta("Spray", "Tutorial do Spray\nCura toda vida", 2, 0, 0);
		var espada_card = new cria_carta("Espada", "Melhor defesa é o ataque\nDefesa +5%", 3, 0, 0);
		var lubrificante_card = new cria_carta("Lubrificante", "Velocidade de ataque +15%", 4, 0, 0);
		var papaleguas_card = new cria_carta("Papa-léguas", "Velocidade e pulo + 20%", 5, 0, 0);
		var pente_card = new cria_carta("Pente", "Munição + 2", 6, 0, 0);
		var windows_card = new cria_carta("Windows", "Recarrega mais rapido", 7, 0, 0);
		var cafecomleite_card = new cria_carta("Café com Leite", "Invunerabilidade + 10%", 8, 0, 0);
		var explosao_card = new cria_carta("Explosão cinemátográfica", "Inimigos mortos explodem", 9, 1, 0);
		var pimentinha_card = new cria_carta("Pimentinha", "Projétils queimam", 10, 1, 0);
		var joelho_card = new cria_carta("+ Joelho", "Ganha mais um pulo", 11, 1, 0);
		var lol_card = new cria_carta("Lol", "Roubo de vida 3% do dano", 12, 1, 0);
		var latrocinio_card = new cria_carta("Latrocínio", "Matar inimigos de dão ouro", 13, 1, 0);
		var penetrar_card = new cria_carta("Penetração", "penetra mais monstros", 14, 1, 0);
		var banana_card = new cria_carta("Banana", "Destroi tiro", 15, 1, 0);
		var dash_card = new cria_carta("Dash", "Dash", 16, 1, 0);
		var clorofila_card = new cria_carta("Clorofia", "tiro deliguiado", 17, 1, 0);
		var braco_card = new cria_carta("Braço", "Mais um braço", 18, 1, 0);
		var batata_card = new cria_carta("Batata", "Dano igual a vida", 19, 1, 0);
		var zap_card = new cria_carta("Bloqueio no Zap", "Cria um escudo que bloqueia o dano", 22, 3, 0);
		var aleijador_card = new cria_carta("Disparo Aleijador", "Os inimigos ficam 1% mais lentos toda vez que recebem dano (até 80%)", 23, 3, 0);
		var streamer_card = new cria_carta("Streamer", "Ganha velocidade de ataque a cada segundo que você não se move. Reinicia a cada onda", 24, 3, 0)
		var Totem_card = new cria_carta("Totem do Minecraft", "Revive ao morrer", 25, 3, 0)
		var egirl_card = new cria_carta("E-girl", "Seu corpo causa  dano ao contato", 26, 3, 0)
		var comunidade_card = new cria_carta("Comunidade", "Invoca um fan que herda metade do seu dano de ataque e velocidade", 27, 3, 0)
		
		
		// INSERINDO AS CARTAS AO BARALHO
		array_push(global.baralho, bomba_card);
		array_push(global.baralho, bomba_card);
		array_push(global.baralho, pastel_card);
		array_push(global.baralho, spray_card);
		array_push(global.baralho, espada_card);
		if  (global.velocidade < 15) {
			array_push(global.baralho, lubrificante_card);
		}
		array_push(global.baralho, papaleguas_card);
		array_push(global.baralho, pente_card);
		array_push(global.baralho, penetrar_card);
		if (global.banana = false) {
			array_push(global.baralho, banana_card);
		}
		if (global.dash = false) {
			array_push(global.baralho, dash_card);
		}
		if (global.clorofila = false) {
			array_push(global.baralho, clorofila_card);
		}
		if (global.braco = false) {
			array_push(global.baralho, braco_card);
		}
		if (global.batata = false) {
			array_push(global.baralho, batata_card);
		}
		if (global.recarga_pistola > 10) {
			array_push(global.baralho, windows_card);
		}
		array_push(global.baralho, cafecomleite_card);
		array_push(global.baralho, explosao_card); 
		array_push(global.baralho, pimentinha_card);
		array_push(global.baralho, joelho_card);
		array_push(global.baralho, lol_card);
		if (global.moeda = 0) {
			array_push(global.baralho, latrocinio_card);
		}
		array_push(global.baralho, zap_card);
		if (global.slow = false) {
			array_push(global.baralho, aleijador_card);
		}
		if (global.streamer = false) {
			array_push(global.baralho, streamer_card);
		}
		if (global.revive = false) {
			array_push(global.baralho, Totem_card);
		}
		array_push(global.baralho, egirl_card);
		array_push(global.baralho, comunidade_card);
}

function preenche_mao() {
	// Pegando algumas cartas do baralho
	for (var i = 0; i < 3; i++) {
		var _carta_atual = irandom(array_length(global.baralho) -1);
		array_push(global.mao, global.baralho[_carta_atual]);	
	}
}