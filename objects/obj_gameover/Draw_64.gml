/// @description Draw endgame details


//draw background
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

//Drawing text
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(512, 384, "Game Over, Press 'R' to restart");