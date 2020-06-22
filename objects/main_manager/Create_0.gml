/// @description Insert description here
// You can write your code in this editor
if(instance_count(main_manager)>1)
{
	instance_destroy()
}
else{
	if(!persistent)
	{
		persistent = true;
	}
}

