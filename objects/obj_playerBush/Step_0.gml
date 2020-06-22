/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("E")&& active)) {
	if collision_circle(x, y, grabRadius, obj_enemyParent, false, true) {
		show_debug_message("You pressed 'E' loser");
		instance_destroy(other)
	}
}

if(!active && collision_circle(x,y,32,obj_little_enemy,false,true))
{
	show_debug_message("bushCall");
	if(obj_player.state == states.chase)
	{
	active = true;
	scr_swap_player(2);
	}
	
}