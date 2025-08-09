if global.hp <= 0 exit;
if instance_exists(par_inimigo) {
	var _dire = point_direction(x, y, par_inimigo.x, par_inimigo.y)
	image_angle = _dire
	direction = _dire;
} else {
	
	if instance_exists(obj_inimigo_cosmevidro) {
		var __dire = point_direction(x, y, obj_inimigo_cosmevidro.x, obj_inimigo_cosmevidro.y)
		image_angle = __dire
		direction = __dire;
	}
}

x = obj_comunidade.x;
y = obj_comunidade.y;
