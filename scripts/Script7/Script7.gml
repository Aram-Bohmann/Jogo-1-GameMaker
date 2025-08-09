function AudioController(_str_sfx, _str_music, _str_master) constructor {
	global.__audio_controller__ = self;
	list_audio = ds_list_create();
	
	global_sfx = _str_sfx;
	global_music =  _str_music;
	global_mastter = _str_master;
	
	
}