if invincibleboss = false {
	invincibleboss = true
	
chaseboss=false;
runawayboss=true;
justrunboss=false;
alarm_set(0,20);

// Removes one health point after collision of enemy and char objects
Object_Character.HPHero -= 0.3;
if Object_Character.HPHero <=0 {
   room_restart();
}

// Moves instance away from char (Provides Object Overlap Protection)
var dir;
var move_dis = 8;  // pixels to move away from other object in collision

// If both instances are in the same location, set direction random
if (x == other.x && y == other.y)
    dir = random(360);

// Move in opposite direction of object in collision
else
    dir = point_direction(other.x,other.y,x,y);

// Move to new location but away from wall and other enemy

var dx = lengthdir_x(move_dis,dir);
var dy = lengthdir_y(move_dis,dir);

if (!place_meeting(x+dx,y,char2)) x += dx;
if (!place_meeting(x,y+dy,char2)) y += dy;
if (!place_meeting(x+dx,y,obj_boss)) x+=dx;
if (!place_meeting(y,y+dy,obj_boss)) y +=dy;
}