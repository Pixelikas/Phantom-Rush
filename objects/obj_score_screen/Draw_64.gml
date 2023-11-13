/// @description Insert description here
// You can write your code in this editor
view_midw = surface_get_width(application_surface)/2;
view_midh = surface_get_height(application_surface)/2;


draw_set_halign(fa_center);
draw_sprite_ext(spr_score_mortes,sprite_death_control , view_midw,view_midh-30, 1, 1, 0,-1, 1);
draw_sprite_ext(spr_score_vidas,sprite_life_control , view_midw,view_midh+60, 1, 1, 0,-1, 1);
draw_sprite_ext(spr_score_tempo,0 , view_midw,view_midh+150, 1, 1, 0,-1, 1);