/* Movement Code */
if (keyboard_check(ord("W"))) || (keyboard_check(vk_up)){
		if place_meeting(x, y-spd, obj_wall){
			while !place_meeting(x, y-sign(spd), obj_wall){
				y -= sign(spd);
				attack_dir = 1
			}	
		}
		else{
		y -= spd;
		attack_dir = 1
	}
}

if (keyboard_check(ord("S"))) || (keyboard_check(vk_down)){
		if place_meeting(x, y+spd, obj_wall){
			while !place_meeting(x, y+sign(spd), obj_wall){
				y += sign(spd);
				attack_dir = 2
			}	
		}
		else{
		y += spd;
		attack_dir = 2
	}
}

if (keyboard_check(ord("A"))) || (keyboard_check(vk_left)){
		if place_meeting(x-spd, y, obj_wall){
			while !place_meeting(x-sign(spd), y, obj_wall){
				x -= sign(spd);
				attack_dir = 3;
			}	
		}
		else{
			x -= spd;
			attack_dir = 3;
		}
}

if (keyboard_check(ord("D"))) || (keyboard_check(vk_right)){
		if place_meeting(x+spd, y, obj_wall){
			while !place_meeting(x+sign(spd), y, obj_wall){
				x += sign(spd);
				attack_dir = 4;
			}	
		}
		else{
			x += spd;
			attack_dir = 4;
		}
}

//attack key
if (keyboard_check_pressed(vk_space)) state = states.attacking;