/// @description Insert description here
// You can write your code in this editor
if collision_circle(x,y,32,obj_weapon,false,true)
{
	instance_destroy();
	show_debug_message("kill")
}