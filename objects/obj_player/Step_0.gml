/// @description Movement script

switch (state){
	case states.normal: scr_movement(); break;
	case states.attacking: scr_attacking(); break;
}