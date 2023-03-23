	global.pause = 0;
	instance_activate_all();
	instance_deactivate_object(obj_paused);
	instance_deactivate_object(obj_cardboard);
	instance_deactivate_object(obj_continuer);
	instance_deactivate_object(obj_exit);