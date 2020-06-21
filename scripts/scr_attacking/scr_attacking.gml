/* Attack */ 
if (attacked = false){
	switch (attack_dir){
		case 1: instance_create_layer(x, y-64, "instances", obj_weapon); break; //up
		case 2: instance_create_layer(x, y+64, "instances", obj_weapon); break; //down
		case 3: instance_create_layer(x-64, y, "instances", obj_weapon); break; //left
		case 4: instance_create_layer(x+64, y, "instances", obj_weapon); break; //right
	}
	
	attacked = true;
	show_debug_message("die bitch");
}

if (instance_exists(obj_weapon)){
	time ++;
	if (time == 5){
		instance_destroy(obj_weapon);
		attacked = false;
		state = states.normal;
		time = 0;
	}
}
