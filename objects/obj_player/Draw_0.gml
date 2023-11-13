/// @description Draw the shadow
shadow = draw_sprite(spr_player_shadow, image_index, x-6, y+8);
shadow.depth = -9;
/// Add ourselves into the order table...
OT_Add( id );


if(_draw_aura = true){
draw_sprite(spr_hack_selection,0,_enemy_selected.x, _enemy_selected.y);
}

