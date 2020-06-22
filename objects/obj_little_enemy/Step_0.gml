if (collision_circle(x,y,240,obj_player,false,true) && !chased && state !=5)
{
	state =3;
}

if collision_circle(x,y,32,obj_player,false,true)
{
	show_debug_message("player collision")
}

if collision_circle(x,y,32,obj_weapon,false,true)
{
	instance_destroy();
	show_debug_message("kill")
}

/*if (collision_circle(x,y,120, obj_player,false,true) && !chased)
{
	state = 4;
}*/


switch(state)
{
	case 1:
	{
		if(destX <0)
		{
			destX = random(room_width);
			destY = random(room_height);
		}


		if(distance_to_point(destX,destY)<5)
		{
			state = 2;
			show_debug_message(state);
			do{
				destX = random(room_width);
				destY = random(room_height);
			}until(!place_meeting(destX,destY,obj_wall))
		break;
		}
		else
		{
			if(place_meeting(x, y-sign(enemySpeed), obj_wall))
			{
				do{
					destX = random(room_width);
					destY = random(room_height);
				}until(!place_meeting(destX,destY,obj_wall))random(room_height);
			}	
			mp_potential_step(destX,destY,enemySpeed,false);
		}
	}
	break;
	
	case 2:	
		alarm_set(0,random(2)*room_speed);
	break;
	
	case 3: 
		show_debug_message("yeah")
	direction =point_direction(x,y,obj_player.x,obj_player.y);
	speed = enemySpeed-.25;
	break;
	
	case 4 :
	direction =point_direction(x,y,-obj_player.x,-obj_player.y);
	speed = enemySpeed-.25;
	break;
	
	case 5:scr_movement();
	if (spd < spdMin) {
	spd = spdMax;
	}
	spd = spd-delta_time/1000000;
	break;
	
	default: show_debug_message(object_index + "invalid state")
}