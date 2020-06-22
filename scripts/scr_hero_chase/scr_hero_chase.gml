
if (collision_circle(x,y,obj_little_enemy.x,obj_little_enemy.y,false,true))
{
	scr_attacking();
}

if(instance_exists(creatureToFollow))
{
direction =point_direction(x,y,obj_little_enemy.x,obj_little_enemy.y);
	speed = spd;
}
else
{
	creatureToFollow = instance_find(obj_little_enemy,random(instance_number(obj_little_enemy)));
}