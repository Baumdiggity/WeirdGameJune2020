if collision_circle(x,y,240,obj_player,false,true)
{
	state =3;
}


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
	
	case 3: direction =point_direction(x,y,obj_player.x,obj_player.y);
	speed = enemySpeed-1.5;
	break;
	
	default: show_debug_message(object_index + "invalid state")
}