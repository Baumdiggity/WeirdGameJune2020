/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("E")) {
	if collision_circle(x, y, grabRadius, obj_enemyParent, false, true) {
		game_end();
	}
}