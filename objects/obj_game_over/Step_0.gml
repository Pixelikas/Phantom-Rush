/// @description Insert description here
// You can write your code in this editor

/// @description Control the menu
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
                menu_image_index = 0;
                break;
             case 1:
                menu_image_index = 1;
                break;
                
            default:
                break;
        }
    
    
    if(obj_input.dash_key){
        switch (menu_index){
            case 0:
			    with(obj_player_stats)
			     scr_reset_player_stats();
                room_restart();
                break;
            case 1:
                obj_input.previous_room = room;
                room_goto(start_screen);
                break;
           
            default:
                break;
        }
        obj_input.dash_key = false;
    }
}


