

char2 = Object_Character;
obj_boss = Object_boss;

// Just Run
if justrunboss=true {
    move_towards_point(char2.x,char2.y,1);
} else {

// Initial Proximity Trigger for Chase
if runawayboss=false && chaseboss=false && distance_to_object(char2) < 200 {
    chaseboss=true;
    runawayboss=false;
}



// If Char is more than 400 pixels away, stop Chase
if chaseboss=true && runawayboss=false && distance_to_object(char2) > 400 {
    move_towards_point(char2.x,char2.y,0);
}


}


CooldownBossBullet += -1;

if(CooldownBossBullet <= 0)
{
	CooldownBossBullet = 60;
	instance_create_layer(x, y, "Instances", Object_flame);
}

// Stop and Start Animation
if speed = 0 {
    image_speed = 0;
	

	
	
	
} else {
    image_speed = 0.2;
	if (runawayboss = true) {

	}
	else if (runawayboss = false) {
		direction = point_direction(x, y, char2.x, char2.y);

		image_angle = direction;
	}
	
	
}

current_room = room;

if (current_room == Room6) {
    audio_play_sound(Boss_sound,9,false);
}
