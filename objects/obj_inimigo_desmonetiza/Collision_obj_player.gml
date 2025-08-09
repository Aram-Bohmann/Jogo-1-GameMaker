var _push = 1;
var _dir = point_direction(other.x, other. y, x, y);
var _hspd = lengthdir_x(_push, _dir);
var _vspd = lengthdir_y(_push, _dir);

x += _hspd;
y += _vspd;

if global.dash_voa = false {
	if (other.alarm[3] <= 0) {
		global.hp -= global.dano_desmonetizacao / global.armadura;
		other.alarm[3] = 1;
		other.image_alpha = 0.7
	}
}