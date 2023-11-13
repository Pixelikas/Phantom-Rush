/// @description  Control the menu
if(alarm[0] <= 0) {
    if(obj_input.down_key || obj_input.yaxis > .5) {
        if(menu_index <array_length_1d(option)-1) {
            menu_index++;
        } else {
            menu_index = 0;
        }
        alarm[0] = room_speed/6;
    }
    
    if(obj_input.up_key || obj_input.yaxis < -.5){
        if(menu_index > 0){
            menu_index--;
        } else {
            menu_index = array_length_1d(option)-1;
        }
        alarm[0] = room_speed/6;
    }
    
    switch (menu_index){
            case 0:
                sprite_index = spr_pause_ret;
                break;
             case 1:
                sprite_index = spr_pause_opt;
                break;
            case 2:
                sprite_index = spr_pause_sair;
                break;
                
            default:
                break;
        }
    
    
    
    if(obj_input.dash_key){
        switch (menu_index){
            case 0:
                obj_player_stats.room_start_action = RETURN;
                room_goto(obj_player_stats.previous_room);
                break;
            case 1:
                obj_input.previous_room = room;
                room_goto(rm_options);
                break;
            case 2:
                game_end();
                break;
            default:
                break;
        }
        obj_input.dash_key = false;
    }
}

