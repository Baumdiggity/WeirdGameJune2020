swap = argument0;
switch(swap)
{		
		//Swap to player_enemy
	case 1: obj_player.state = states.chase; 
	newPlayer = instance_find(obj_little_enemy,0);
	newPlayer.state = 5;
	obj_camera.playerToFollow = instance_find(obj_little_enemy,0);
	for( i =1; i< instance_number(obj_little_enemy); i++)
	{
		thisEnemy =instance_find(obj_little_enemy,i);
		thisEnemy.chased = true;
	}
	break;	
	
	case 2: 
	nextBush = obj_playerBush;
	for (i=0; i<instance_number(obj_playerBush);i++)
	{
		thisBush = instance_find(obj_playerBush,i);
		if(thisBush.active)
		{
			nextBush = thisBush;
			break;
		}	
	}
	obj_camera.playerToFollow = nextBush;
	obj_player.creatureToFollow = nextBush;
	default: show_debug_message("swap didn't get set correctly");
		break;
}