/// @description  Control the stats

if(global.healthupgrade = true){
maxhp = 6;
}
if(hp < 0){
   hp = 0;
   }
/*if(hp == 0){
hp = 5;
maxhp = hp;
_previousHP = maxhp;
bullets = 4;
stamina = 10;
maxstamina = stamina;
instance_create_depth(1088, 1248,400, oPlayer);

}*/
   
//destroy to reset if the player quits
if(room == start_screen){
	with(_staminabar1)
     instance_destroy();
    with(_staminabar2)
     instance_destroy();
    with(_staminabar3)
     instance_destroy();
 instance_destroy();	
}
   
   
// Stamina regen
if (stamina < maxstamina && alarm[0] == -1){
    if(room!=rm_pause){
        stamina++;
        }
}
   


// Special build up
if (special < maxspecial && alarm[1] == -1){
    if(room!=rm_pause){
        special++;
        alarm[1] = room_speed*1;
        }
}

// Pause the game
if (obj_input.pause_key) {
    if (room != rm_pause){
        if (instance_exists(obj_player)){
            obj_player.persistent = false;
        }
        previous_room = room;
        room_persistent = true;
        room_goto(rm_pause);
    } else {
        room_goto(previous_room);
    }
    obj_input.pause_key = false;
}

