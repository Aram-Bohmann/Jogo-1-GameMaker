if (global.levelup = true) exit;
// Rampa
repeat(abs(hspd)) {
	
	// Subir escada
	if (place_meeting(x + sign(hspd), y, obj_pai_bloco)){
		if (!place_meeting(x + sign(hspd), y - 1, obj_pai_bloco)){
			y--;
		}
		
	// Descer escada
	} else {
		if (!place_meeting(x + sign(hspd), y + 1, obj_pai_bloco)){
			if (place_meeting(x + sign(hspd), y +2, obj_pai_bloco)) {
				y++;
			}
		}
	}
	
	// Colição horizontal
	if (place_meeting(x + sign(hspd), y, obj_pai_bloco) || place_meeting(x + sign(hspd), y, obj_inimigo_regia)) {
		hspd = 0;
		break;
	} else {
		x += sign(hspd);
	}
}

repeat(abs(vspd)) {
	// Colição vertical
	if (place_meeting(x, y+ sign(vspd), obj_pai_bloco) || place_meeting(x + sign(hspd), y, obj_inimigo_regia)) {
		vspd = 0;
		break;
	} else {
		y += sign(vspd);
	}
}
