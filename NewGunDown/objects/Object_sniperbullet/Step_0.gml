// Move the bullet in its set direction and speed
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);



if (collision_rectangle(x, y, x, y, Object_Character, false, true) != noone) {
    // Damage the player and destroy the bullet
   Object_Character.HPHero -= 1;
   if Object_Character.HPHero < 1 {
   room_restart();
   }
}