/// @description Insert description here
// You can write your code in this editor
if(instance_number(main_manager)>1)
{
	instance_destroy()
}
else{
	if(!persistent)
	{
		persistent = true;
	}
}

