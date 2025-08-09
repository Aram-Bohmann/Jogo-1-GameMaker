resolution_width = 396 * 4;
resolution_height = 216 * 4;
resolution_scale = 1;


global.view_width = resolution_width / resolution_scale;
global.view_height = resolution_height / resolution_scale;
view_target = DEUS;
window_set_size(global.view_width * resolution_scale, global.view_height * resolution_scale);
surface_resize(application_surface, global.view_width * resolution_scale, global.view_height * resolution_scale);
