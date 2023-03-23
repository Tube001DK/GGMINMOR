if (!pause)
{
	pause = 1;
	instance_deactivate_all(true);
	show_debug_message("Hello World Escape");

}
else
{
	pause = 0;
	instance_activate_all();
}


	