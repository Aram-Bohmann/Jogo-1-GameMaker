#region Arte

enum ARTE {
	BOMBA, 
	PASTEL,
	SPRAY,
	ESPADA,
	PAPALEGUAS,
	PENTE,
	WINDOWS,
	CAFE_LEITE,
	ESPLOSAO,
	PIMENTINHA,
	JOELHO,
	LOL,
	LATROCINIO,
	PENETRACAO,
	
	BANANA,
	GRANADA,
	KATANA,
	BOOMERANG,
	DOZE,
	UZI,
	GATINHO,
	
	BLOQUEIO,
	ALEIJADOR,
	STREAMER,
	TOTEM,
	EGIRL,
	COMUNIDADE,
	
	TOTAL
	
}
#endregion


// Estruturas do baralho
global.baralho = [];

// Estruturas da mão
global.mao = [];

// criando a estrutura da carta
function cria_carta(_nome = "", _descricao = "", _img_arte = 0, _img_fundo = 0, _img_titulo = 0) constructor {
	nome		= _nome;
	descricao	= _descricao;
	img_arte	= _img_arte;
	img_fundo	= _img_fundo;
	img_titulo  = _img_titulo; 
	
}