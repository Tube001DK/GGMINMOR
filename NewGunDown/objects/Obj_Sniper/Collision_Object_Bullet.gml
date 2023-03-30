HPsniper -=2;

if (HPsniper <= 0)
{instance_destroy()
}

if(HPsniper <= 0)
{
	global.Emeralds += random_range(30,45)
	instance_destroy(self);
}