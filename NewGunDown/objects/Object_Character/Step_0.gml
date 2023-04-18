direction = point_direction(x, y, mouse_x, mouse_y);

image_angle = direction;

CooldownBullet += -1;


if(CooldownBullet <= 0)
{
	var l79BF49F7_0;
	l79BF49F7_0 = keyboard_check(vk_left);
	if (!l79BF49F7_0)
	{
		var l695F150E_0;
		l695F150E_0 = keyboard_check(vk_right);
		if (!l695F150E_0)
		{
			var l595D9613_0;
			l595D9613_0 = keyboard_check(vk_up);
			if (!l595D9613_0)
			{
				var l18F14630_0;
				l18F14630_0 = keyboard_check(vk_down);
				if (!l18F14630_0)
				{
					var l37820247_0;
					l37820247_0 = mouse_check_button(mb_left);
					if (l37820247_0)
					{
						var spawnDistance = 35; // Adjust this value as desired

// Calculate the spawn position

var spawnX = x + spawnDistance * cos(degtorad(direction));
var spawnY = y - spawnDistance * sin(degtorad(direction));

// Create the object at the spawn position
instance_create_layer(spawnX, spawnY, "Instances" ,Object_Bullet);

						audio_play_sound(Snd_ShotChar,9,false)
					}
				}
			}
		}
	}

	CooldownBullet = 30;
}




rightKey = keyboard_check(ord("D")) or keyboard_check(vk_right);
leftKey = keyboard_check(ord("A")) or keyboard_check(vk_left);
upKey = keyboard_check(ord("W")) or keyboard_check(vk_up);
downKey = keyboard_check(ord("S")) or keyboard_check(vk_down);

GreCooldown -= 1;

xspd = (rightKey - leftKey) * moveSpeed;
yspd = (downKey - upKey) * moveSpeed;

if place_meeting(x + xspd, y, oWall)
{
	xspd = 0;
	
}
if place_meeting(x, y + yspd, oWall)
{
	yspd = 0;
}

x += xspd;
y += yspd

if place_meeting(x, y, ORoom)
{

	room_goto_next();
	
	current_room = room;
	
	if (current_room == 1) {
	
	AccessToGre = 0;
	
		x = 130
		y= 647
	}
	else if (2 == current_room) {
		x = 130
		y= 647
	}
	else if (3 == current_room) {
		
		x = 130
		y= 647
	}
	else if (4 == current_room) {
		
		x = 151
		y= 130
	}
	else if (5 == current_room) {
		
		x = 158
		y= 625
	}
	else if (6 == current_room) {
		
		x = 151
		y= 1878
	}

}
if place_meeting(x, y, ORoom)
{
	room_goto_next();
	
	current_room = room;

	if (current_room == 1) {
	
	
		x = 130
		y= 647
	}
	else if (2 == current_room) {
		x = 130
		y= 647
	}
	else if (3 == current_room) {
		
		x = 130
		y= 647
	}
	else if (current_room ==4) {
		
		x = 151
		y= 130
	}
	else if (5 == current_room) {
		
		x = 158
		y= 625
	}
	else if (6 == current_room) {
		
		x = 151
		y= 1878
	}

}


keyGrenade = keyboard_check_pressed(ord("E"));

if (keyGrenade and GreCooldown <= 0 and AccessToGre == 0){
	GreCooldown = 60
	instance_create_layer(x,y,"Instances",Object_grenade)
}

if (HPHero <= 0) {
	instance_destroy();
}