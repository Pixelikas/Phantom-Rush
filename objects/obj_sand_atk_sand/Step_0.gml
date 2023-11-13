/// @description Insert description here
// You can write your code in this editor

if (scr_animation_hit_frame(3)){
	if(head_created == false){
		head_created = true;
	instance_create_depth( x,  y-10, 400, obj_sand_atk_head);
	}
}