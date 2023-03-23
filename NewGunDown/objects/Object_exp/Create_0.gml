depth = -1000;
image_speed = 0.5;


var player_x = Object_exp.x;
var player_y = Object_exp.y;


var radius = 100;


with(Object_Enemy) {
   
   var distance = point_distance(x, y, player_x, player_y);
   
   // Check if the instance is within the radius
   if (distance <= radius) {
      // Do something with the instance, e.g. damage it
      HP -= 10;
	  
	  if(HP <= 0)
{
	Emeralds =+ random_range(20,35)
		  instance_destroy()
}
   }
}