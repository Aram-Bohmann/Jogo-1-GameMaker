repeat(abs(vspd)) {
	// Colição vertical
	if (place_meeting(x, y+ sign(vspd), obj_pai_bloco)) {
		vspd = 0;
		break;
	} else {
		y += sign(vspd);
	}
}
