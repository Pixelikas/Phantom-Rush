/// @description Insert description here
// You can write your code in this editor

phy_position_x = xpos;
phy_position_y = ypos;

if(hp_nodo == 0 && explosion_triggered == false){
	explosion_triggered = true;
	instance_create_depth(xpos, ypos, 200, obj_explosion_fade);
}

if(kind_of_node == 3 && hp_nodo == 0){
obj_body.shield_node_alive = false;
obj_body.shield = false;
}

//flash when damage taken
if(_previousHP > hp_nodo){
	_previousHP = hp_nodo;
	_flash_countdown = 6;
	_flash_countdown_previous = 6;
	alarm[3] = room_speed/6;
	alarm[4] = room_speed;
}

if(_flash_countdown < _flash_countdown_previous){
	if(_flash_countdown == 0){
	  _flash_countdown_previous = 0;
	  _flash_countdown = 0;
	}else{
	_flash_countdown_previous -= 1;
	alarm[3] = room_speed/6;
	}
}