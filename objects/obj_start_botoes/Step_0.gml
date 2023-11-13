/// @description Control the menu
if(alarm[0] <= 0) {
    if(obj_input.right_key || obj_input.xaxis > .5) {
        if(menu_index <array_length_1d(option)-1) {
            menu_index++;
        } else {
            menu_index = 0;
        }
        alarm[0] = room_speed/6;
    }
    
    if(obj_input.left_key || obj_input.xaxis < -.5){
        if(menu_index > 0){
            menu_index--;
        } else {
            menu_index = array_length_1d(option)-1;
        }
        alarm[0] = room_speed/6;
    }
    
    switch (menu_index){
            case 0:
                image_index = 0;
                break;
             case 1:
                image_index = 1;
                break;
            case 2:
                image_index = 2;
                break;
            case 3:
                image_index = 3;
                break;
                
            default:
                break;
        }
    
    
    if(obj_input.dash_key){
        switch (menu_index){
            case 0:
                room_goto(level_tutorial);
                break;
            case 1:
			     //options screen nao tem nada por enqnt
                //obj_input.previous_room = room;
                //room_goto(options_screen);
                break;
            case 2:
                room_goto(credits_screen);
                break;
            case 3:
            game_end();
                break;
                
            default:
                break;
        }
        obj_input.dash_key = false;
    }
}


