/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 34058767
/// @DnDArgument : "code" "direction = point_direction(x, y, mouse_x, mouse_y);$(13_10)$(13_10)image_angle = direction;$(13_10)$(13_10)CooldownBullet += -1;$(13_10)$(13_10)$(13_10)if(CooldownBullet <= 0)$(13_10){$(13_10)	var l79BF49F7_0;$(13_10)	l79BF49F7_0 = keyboard_check(vk_left);$(13_10)	if (!l79BF49F7_0)$(13_10)	{$(13_10)		var l695F150E_0;$(13_10)		l695F150E_0 = keyboard_check(vk_right);$(13_10)		if (!l695F150E_0)$(13_10)		{$(13_10)			var l595D9613_0;$(13_10)			l595D9613_0 = keyboard_check(vk_up);$(13_10)			if (!l595D9613_0)$(13_10)			{$(13_10)				var l18F14630_0;$(13_10)				l18F14630_0 = keyboard_check(vk_down);$(13_10)				if (!l18F14630_0)$(13_10)				{$(13_10)					var l37820247_0;$(13_10)					l37820247_0 = mouse_check_button(mb_left);$(13_10)					if (l37820247_0)$(13_10)					{$(13_10)						instance_create_layer(x, y, "Instances", Object_Bullet);$(13_10)						audio_play_sound(Snd_ShotChar,9,false)$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)$(13_10)	CooldownBullet = 30;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)rightKey = keyboard_check(ord("D")) or keyboard_check(vk_right);$(13_10)leftKey = keyboard_check(ord("A")) or keyboard_check(vk_left);$(13_10)upKey = keyboard_check(ord("W")) or keyboard_check(vk_up);$(13_10)downKey = keyboard_check(ord("S")) or keyboard_check(vk_down);$(13_10)$(13_10)GreCooldown -= 1;$(13_10)$(13_10)xspd = (rightKey - leftKey) * moveSpeed;$(13_10)yspd = (downKey - upKey) * moveSpeed;$(13_10)$(13_10)if place_meeting(x + xspd, y, oWall)$(13_10){$(13_10)	xspd = 0;$(13_10)	$(13_10)}$(13_10)if place_meeting(x, y + yspd, oWall)$(13_10){$(13_10)	yspd = 0;$(13_10)}$(13_10)$(13_10)x += xspd;$(13_10)y += yspd$(13_10)$(13_10)if place_meeting(x + xspd, y, ORoom)$(13_10){$(13_10)$(13_10)	room_goto_next();$(13_10)	$(13_10)	current_room = room;$(13_10)	$(13_10)	if (current_room == 1) {$(13_10)	$(13_10)	AccessToGre = 0;$(13_10)	$(13_10)		x = 130$(13_10)		y= 647$(13_10)	}$(13_10)	else if (2 == current_room) {$(13_10)		x = 130$(13_10)		y= 647$(13_10)	}$(13_10)	else if (3 == current_room) {$(13_10)		$(13_10)		x = 130$(13_10)		y= 647$(13_10)	}$(13_10)$(13_10)}$(13_10)if place_meeting(x, y + yspd, ORoom)$(13_10){$(13_10)	room_goto_next();$(13_10)	$(13_10)	current_room = room;$(13_10)$(13_10)	if (current_room == 1) {$(13_10)	$(13_10)	AccessToGre = 0;$(13_10)	$(13_10)		x = 130$(13_10)		y= 647$(13_10)	}$(13_10)	else if (2 == current_room) {$(13_10)		x = 130$(13_10)		y= 647$(13_10)	}$(13_10)	else if (3 == current_room) {$(13_10)		$(13_10)		x = 130$(13_10)		y= 647$(13_10)	}$(13_10)}$(13_10)$(13_10)keyGrenade = keyboard_check_pressed(ord("E"));$(13_10)$(13_10)if (keyGrenade and GreCooldown <= 0 and AccessToGre == 0){$(13_10)	GreCooldown = 60$(13_10)	instance_create_layer(x,y,"Instances",Object_grenade)$(13_10)}$(13_10)$(13_10)if (HPHero <= 0) {$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)"
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
						instance_create_layer(x, y, "Instances", Object_Bullet);
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

if place_meeting(x + xspd, y, ORoom)
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

}
if place_meeting(x, y + yspd, ORoom)
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
}

keyGrenade = keyboard_check_pressed(ord("E"));

if (keyGrenade and GreCooldown <= 0 and AccessToGre == 0){
	GreCooldown = 60
	instance_create_layer(x,y,"Instances",Object_grenade)
}

if (HPHero <= 0) {
	instance_destroy();
}