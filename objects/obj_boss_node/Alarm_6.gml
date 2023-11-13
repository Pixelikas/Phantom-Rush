/// @description bomb trigger
// You can write your code in this editor

if(kind_of_node == 4 && hp_nodo > 0 && obj_body.stage != 2){
	alarm[6] = room_speed*2;
	instance_create_depth(xpos, ypos, 400, obj_boss_bomb);
}