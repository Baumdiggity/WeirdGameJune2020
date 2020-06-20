/* Movement Code */
if (keyboard_check(ord("W"))) || (keyboard_check(vk_up)){
		if place_meeting(x, y-spd, obj_wall){
			while !place_meeting(x, y-sign(spd), obj_wall){
				y -= sign(spd);
			}	
		}
		else y -= spd;
}

if (keyboard_check(ord("S"))) || (keyboard_check(vk_down)){
		if place_meeting(x, y+spd, obj_wall){
			while !place_meeting(x, y+sign(spd), obj_wall){
				y += sign(spd);
			}	
		}
		else y += spd;
}

if (keyboard_check(ord("A"))) || (keyboard_check(vk_left)){
		if place_meeting(x-spd, y, obj_wall){
			while !place_meeting(x-sign(spd), y, obj_wall){
				x -= sign(spd);
			}	
		}
		else x -= spd;
}

if (keyboard_check(ord("D"))) || (keyboard_check(vk_right)){
		if place_meeting(x+spd, y, obj_wall){
			while !place_meeting(x+sign(spd), y, obj_wall){
				x += sign(spd);
			}	
		}
		else x += spd;
}
