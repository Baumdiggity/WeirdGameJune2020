/// @description Player Variables
spd = 3;
attack_dir = 0;
state = states.normal;
endgame = false;

//attacking
attacked = false;
time = 0;

//animation
image_speed = 0;

creatureToFollow = instance_find(obj_little_enemy,random(instance_number(obj_little_enemy)));