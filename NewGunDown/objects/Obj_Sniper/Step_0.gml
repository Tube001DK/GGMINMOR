// Get the position of the player
var player_x = Object_Character.x;
var player_y = Object_Character.y;

// Get the position of the sniper
var sniper_x = Obj_Sniper.x;
var sniper_y = Obj_Sniper.y;

// Calculate the direction towards the player
direction = point_direction(Obj_Sniper.x, Obj_Sniper.y, Object_Character.x, Object_Character.y);

// Set the sniper's image angle to face the player
image_angle = direction;





// Check if the player is within range of the sniper
if point_distance(sniper_x, sniper_y, player_x, player_y) < 600 {
    // Create a bullet instance that moves towards the player
   CooldownSniperbullet += -1;
}

if (instance_exists(Obj_Sniper)) {
    target = instance_nearest(x, y, Obj_Sniper);
} else {
    target = noone;
}


// Shooting

if(CooldownSniperbullet <= 0)
{
	CooldownSniperbullet = 180;
	instance_create_layer(x, y, "Instances", Object_sniperbullet);
	instance_create_layer(x, y, "Instances", Object_sniperbullet);

has_fired_bullet = true;
}

else {
has_fired_bullet = false;
}

// Move the sniper sprite if it has fired a bullet
if (has_fired_bullet) {
// Add code here to move the sniper sprite, e.g.
Obj_Sniper.x += 2;
}

// Stop and Start Animation
if speed = 1 {
    image_speed = 0;
} else {
    image_speed = 0.1;
}

if CooldownSniperbullet = 0 {
	image_speed = 0.1;
} else {
	image_speed = 0;

}
}