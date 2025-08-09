uma_vez = false;
global.nivel = 0;

#region Armas
// Pistola
global.municao_max_pistola = 4;
global.recarga_pistola = 61;
#endregion

#region Disparo
global.aumento_tiro = 0;
global.aumento = 0.5;
// Dano Pepino
global.dano_pepino = 1 + (global.tempo / 180);
// Dano planaria
global.dano_planaria = 2 + (global.tempo / 180);
// Dano abrobora
global.dano_abrobora = 50 + (global.tempo / 180);
// Dano cosmevidro
global.dano_cosmevidro = 2 + (global.tempo / 180);
#endregion

#region Inimigo
global.dano_boss = 30;
global.hp_boss_max = 5000;
global.hp_boss = global.hp_boss_max;

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

#region Player
global.penetrar = 0;
// Terceiro Braço
global.braco = false;
// Batata
global.batata = false;
//Dash
global.dash = false;
global.dash_voa = false;
// Banana
global.banana = false;
// Banana
global.clorofila = false;
// Vida
global.hp = 15;
global.hp_max = 15;
global.armadura = 1;
global.dano = 1;

// xp
global.xp = 0;
global.xp_max = 5;
global.levelup = false;
global.level = 1;

// Pulos
global.jump_max = 1;
global.move_spd_max = 2;

// Imunidade
global.imunidade = 0;

// explosão
global.explosao = 0;

// explosão
global.queimar = false;
global.dano_queimar = 0;

// roubar vida
global.lol = 0;
// Surgir boss
global.soum = false

// Moeda
global.moeda = 0;
global.moeda_quantidade = 0;

// Escudo
global.escudo = false;
global.escudo_tempo = 0;

// slow
global.slow = false;

// Streamer
global.streamer = false;

// Reviver
global.revive = false;

// e-girl
global.egirl = false;
global.egirl_forca = 10;

// Dados
global.pepino = 0;
global.planaria = 0;
global.vitoria = 0;
global.cosmevidro = 0;
global.desmonetizacao = 0;
global.abrobrora = 0;
global.damage = 0;
global.sofrido = 0;
#endregion