event_inherited();

if(sprite_index = sprite_for_animation && scr_animation_hit_frame(41)){
   with(_wallmask){
      instance_destroy();
   }
   sprite_index = sprite_for_open;
   //teleport object -> instance_create(phy_position_x,phy_position_y-100,obj_light);
}



