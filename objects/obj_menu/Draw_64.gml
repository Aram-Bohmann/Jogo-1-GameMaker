draw_set_font(fnt_menu);
var dist = 35 *4;
var _x = 198 * 4;
var _y = 80 * 4;


for (var i = 0; i < op_max; i++) {
	draw_set_halign(fa_center);
	if (index == i) {
		draw_set_color(c_yellow);	
	} else {
		draw_set_color(c_white);	
	}
	draw_text(_x, _y + (dist * i), option[i]);
};

draw_set_font(-1);
