/// @description alarm for sand atk
// You can write your code in this editor
if(stage == 2){
instance_create_depth( oPlayer.phy_position_x,  oPlayer.phy_position_y, 400, obj_sand_atk_sand);

alarm[0] = room_speed*4;
}