/// @description DMG flash alarm
// You can write your code in this editor

_flash_countdown -= 1;
	if(_flash_flag == true){
		_flash_flag = false;
	}else{
		_flash_flag = true;
	}