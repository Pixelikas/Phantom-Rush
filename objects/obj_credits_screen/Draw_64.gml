/// @description Insert description here
// You can write your code in this editor
view_midw = surface_get_width(application_surface)/2;
view_midh = surface_get_height(application_surface)/2;

draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text_transformed(view_midw, view_midh, "Valente de Moraes", 2, 2, 0);
draw_text_transformed(view_midw, view_midh+80, "Lucas Naspolini", 2, 2, 0);