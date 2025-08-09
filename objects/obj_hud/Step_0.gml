if global.hp <= 0 exit;
// Upou? Pare
if (global.levelup == true) {
	exit;
}
if alarm[0] <= 0 {
	alarm[0] = 60;
}
// Ir embora
if (keyboard_check(vk_escape)) game_restart(); 