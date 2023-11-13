
if(sprite_index = spr_stamina_full){
  if(obj_player_stats.stamina < _valuemax){
     sprite_index = spr_stamina_empty;
 }
}

if(sprite_index = spr_stamina_empty){
  if(obj_player_stats.stamina > _valuemin){
     sprite_index = spr_stamina_anim;
 }
}

if(sprite_index = spr_stamina_anim){
  if (scr_animation_hit_frame(6)){
     sprite_index = spr_stamina_full;
 }
}

