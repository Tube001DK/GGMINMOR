
if (distance_to_object(Object_Character) < 70 and CanWrite == true)
{
	CanWrite = false;
    instance_create_layer(x,y,"Instances",ShopText);
	
	
	
}
else if (distance_to_object(Object_Character) > 71)
{
	CanWrite = true;
	instance_destroy(ShopText)	
}

if (CanWrite == false and keyboard_check_pressed(ord("E"))) {
	instance_destroy(ShopText)	
	
	global.Grenade = true;
	
	instance_create_layer(x,y,"Instances",Shop_Dynamic);
}