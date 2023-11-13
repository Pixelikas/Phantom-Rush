/// Step....

// re-executa estado e re-desenha sprite

if(obj_player_stats.hp > 0 && _cutscene_triggered == false){
	script_execute(state);
}
sprite_index = sprite[face, movement];

//flash when damage taken
if(obj_player_stats._previousHP > obj_player_stats.hp){
	obj_player_stats._previousHP = obj_player_stats.hp;
	if(obj_player_stats._previousHP == 0){
		obj_player_stats.deaths += 1;
		instance_create_depth(phy_position_x, phy_position_y,400, obj_game_over);
		 if(state == scr_falling_state){
	         alarm[9] = 1;	
	     }
	}
	_flash_countdown = 6;
	_flash_countdown_previous = 6;
	alarm[7] = room_speed/6;
	alarm[8] = room_speed;
}

if(_flash_countdown < _flash_countdown_previous){
	if(_flash_countdown == 0){
	  _flash_countdown_previous = 0;
	  _flash_countdown = 0;
	}else{
	_flash_countdown_previous -= 1;
	alarm[7] = room_speed/6;
	}
}

//check for death
if(obj_player_stats.hp <= 0){
	if(state != scr_falling_state){
	movement = DEATH;
	}
	
 /* instance_destroy();
   with(oPlayer_holeColMask){
	   instance_destroy();
   }
   with(obj_player_hitbox_mask){
	   instance_destroy();
   }*/
}
if(movement == DEATH && scr_animation_hit_frame(30)){
	image_speed=0;
}

	

	
