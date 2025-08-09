// Gravidade e queda min e max
vspd += grv;
vspd = clamp(vspd, vspd_min, vspd_max);

if alarm[0] <= 0 {
	alarm[0] = 50;
}
