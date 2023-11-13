/// @description Insert description here
// You can write your code in this editor

view_midw = surface_get_width(application_surface)/2;
draw_sprite_ext(spr_boss1_health,boss1_hp , view_midw,surface_get_height(application_surface)-108, 2, 2, 0,-1, 1);

draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_text_transformed(view_midw, surface_get_height(application_surface)-185, "Desert Centipede", 2, 2, 0);