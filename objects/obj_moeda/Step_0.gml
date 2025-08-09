if global.hp <= 0 exit;
// Gravidade e queda min e max
vspd += grv;
vspd = clamp(vspd, vspd_min, vspd_max);