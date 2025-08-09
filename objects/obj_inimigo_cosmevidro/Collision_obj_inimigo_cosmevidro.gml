var _push = 2;
var _dir = point_direction(other.x, other. y, x, y);
var _hspd = lengthdir_x(_push, _dir);
var _vspd = lengthdir_y(_push, _dir);

x += _hspd;
y += _vspd;


if (_max >= 5) {
	xxp += 1 + other.xp;
	xp = xxp;
	hp += 1 + other.hp;
	instance_destroy(other)
	image_xscale += global.aumento;
	image_yscale += global.aumento;
	if global.aumento_tiro < 6 {
		global.aumento_tiro += global.aumento;
	}
	_max += 1;
}