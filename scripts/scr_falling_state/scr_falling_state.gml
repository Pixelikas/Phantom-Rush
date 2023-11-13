/// @description scr_falling_state

//run animation
image_speed = .5;
movement = FALLING;
//kill player

if( oPlayer.y < (_fallingY + 128) ){
//phy_position_y = phy_position_y + 20;
physics_apply_impulse(x, y, 0, +12);
} else{
obj_player_stats.hp = 0;
}

