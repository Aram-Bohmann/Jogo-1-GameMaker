// Upou? Pare
if (global.levelup == true or global.vencer == true) exit;

// Escudo
if (global.escudo = true and alarm[7] <= 0 and !instance_exists(obj_zap)) {
	instance_create_layer(x, y, "Instances", obj_zap);
	alarm[7] = 240 - global.escudo_tempo;
}

// Executar estado do player
script_execute(state);