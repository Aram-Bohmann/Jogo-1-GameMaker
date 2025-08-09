if global.hp <= 0 exit;
// Gravidade e queda min e max
if (global.levelup = true) exit;
vspd += grv;
vspd = clamp(vspd, vspd_min, vspd_max);

if (alarm[0] <= 0) {
	alarm = 30;
}