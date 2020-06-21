
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
	destX = random(room_width);
	destY = random(room_height);
	break;
}
else
{
	
	mp_potential_step(destX,destY,enemySpeed,false);
}
	}
	break;
	case 2:	
	//show_debug_message(get_delta_time());
	alarm_set(0,random(2)*room_speed);
		//state = 1;
	break;
	
	default: show_debug_message(object_index + "invalid state")
}