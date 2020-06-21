/* Attack */ 
if (attacked = false){
	switch (attack_dir){
		case 1: instance_create_layer(x-5, y-16, "instances_1", obj_weapon); obj_weapon.image_yscale= -1; break; //up
		case 2: instance_create_layer(x-5, y+64, "instances_1", obj_weapon); break; //down
		case 3: instance_create_layer(x-32, y+20, "instances_1", obj_weapon); obj_weapon.image_angle = -90; break; //left
		case 4: instance_create_layer(x+32, y+40, "instances_1", obj_weapon); obj_weapon.image_angle = 90; break; //right
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
