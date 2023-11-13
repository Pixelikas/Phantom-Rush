/// @description Insert description here
// You can write your code in this editor
//flash when damage taken
if(_previousHP > hp){
	_previousHP = hp;
	_flash_countdown = 6;
	_flash_countdown_previous = 6;
	alarm[1] = room_speed/6;
	alarm[2] = room_speed;
}

if(_flash_countdown < _flash_countdown_previous){
	if(_flash_countdown == 0){
	  _flash_countdown_previous = 0;
	  _flash_countdown = 0;
	}else{
	_flash_countdown_previous -= 1;
	alarm[1] = room_speed/6;
	}
}