swap = argument0;
switch(swap)
{		
		//Swap to player_enemy
	case 1: obj_player.state = states.chase; 
	instance_find(obj_little_enemy,0).state = 5;
	obj_camera.playerToFollow = instance_find(obj_little_enemy,0);
	for( i =1; i< instance_count(obj_little_enemy); i++)
	{
		instance_find(obj_little_enemy,i).state = 4;
	}
	break;		
	default: show_debug_message("swap didn't get set correctly");
		break;
}