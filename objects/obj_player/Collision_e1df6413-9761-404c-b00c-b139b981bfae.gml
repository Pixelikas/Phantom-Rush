/// @description  go to though the door
/*if (room_exists(other.new_room)){
    room_goto(other.new_room);
    x = other.new_x;
    y = other.new_y;
}*/

with(obj_player_stats){
if (room != rm_thanks_screen){
        if (instance_exists(obj_player)){
            obj_player.persistent = false;
        }
        previous_room = room;
        room_persistent = true;
        room_goto(rm_thanks_screen);
    } 
}

/* */
/*  */
