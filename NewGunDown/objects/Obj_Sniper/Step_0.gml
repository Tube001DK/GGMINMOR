// Get the position of the player
var player_x = Object_Character.x;
var player_y = Object_Character.y;

// Get the position of the sniper
var sniper_x = Obj_Sniper.x;
var sniper_y = Obj_Sniper.y;

// Calculate the direction towards the player
var dir = point_direction(sniper_x, sniper_y, player_x, player_y);

// Set the sniper's image angle to face the player
image_angle = dir;

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

// Aiming
if (target != noone) {
    var target_x = target.x;
    var target_y = target.y;
    var angle_to_target = point_direction(x, y, target_x, target_y);
    crosshair.x = x + lengthdir_x(32, angle_to_target);
    crosshair.y = y + lengthdir_y(32, angle_to_target);
    image_angle = angle_to_target;
}

// Shooting


if(CooldownSniperbullet <= 0)
{
	CooldownSniperbullet = 180;
	instance_create_layer(x, y, "Instances", Object_sniperbullet);
	show_debug_message("Here")
}
