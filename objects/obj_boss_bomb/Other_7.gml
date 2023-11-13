/// @description Insert description here
// You can write your code in this editor
if(run_cycles == 2){
	instance_create_depth( x,  y, 400, obj_explosion_fade);
	instance_destroy();
}else{

run_cycles++;
}