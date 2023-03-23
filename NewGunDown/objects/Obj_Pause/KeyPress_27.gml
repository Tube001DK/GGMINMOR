if (!global.pause)
{
	pause = 1;
	instance_deactivate_all(true);

	instance_create_layer(x2+200, y2+50,"Instances",obj_paused);
	instance_create_layer(x2+270, y2+130,"Instances",obj_continuer);
	instance_create_layer(x2+295, y2+200,"Instances",obj_exit);
	instance_create_layer(x2+325,y2+150,"Instances",obj_cardboard);
	
	

}
else
{
	global.pause = 0;
	instance_activate_all();
	instance_deactivate_object(obj_paused);
	instance_deactivate_object(obj_cardboard);
	instance_deactivate_object(obj_continuer);
	instance_deactivate_object(obj_exit);
}