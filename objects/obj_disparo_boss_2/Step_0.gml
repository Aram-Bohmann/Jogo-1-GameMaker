if instance_exists(obj_player) {
	var _dire = point_direction(x, y, obj_player.x, obj_player.y)
	image_angle = _dire
	direction = _dire;
	speed = 1;
}