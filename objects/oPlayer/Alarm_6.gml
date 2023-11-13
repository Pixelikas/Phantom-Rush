/// @description Regenera balas
// You can write your code in this editor

if(obj_player_stats.bullets < 4)
obj_player_stats.bullets += 1;

alarm[6] = room_speed*4;