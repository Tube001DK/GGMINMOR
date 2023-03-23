// Get the current health of the character
var cur_health = Object_Character.HPHero;

// Update the width of the health bar based on the current health
obj_healthbar.image_xscale = 1 * (cur_health / 10);

// Set the position of the health bar to follow the camera
x = camera_get_view_x(view_camera[0])+325;
y = camera_get_view_y(view_camera[0])+330;