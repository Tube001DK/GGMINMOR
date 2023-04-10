// Move the bullet in its set direction and speed
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);




if place_meeting(x + speed, y, oWall)
{
	instance_destroy();
	
}
if place_meeting(x, y + speed, oWall)
{
	instance_destroy();
}
;