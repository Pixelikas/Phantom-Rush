/// @description Insert description here
// You can write your code in this editor
view_midw = surface_get_width(application_surface)/2;
view_midh = surface_get_height(application_surface)/2;
draw_sprite_ext(spr_game_over,0 , view_midw,view_midh-256, 4, 4, 0,-1, 1);


draw_sprite_ext(spr_game_over_menu,menu_image_index , view_midw,view_midh, 4, 4, 0,-1, 1);