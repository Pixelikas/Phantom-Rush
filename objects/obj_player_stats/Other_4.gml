/// @description  Remember the player's start position
if(room == rm_pause) exit;

switch (room_start_action) {
    case RETURN:
        break;
    case NEW_ROOM:
    default:
        if(instance_exists(obj_player)){
            player_xstart = obj_player.x;
            player_ystart = obj_player.y;
            }
        break;
    case LOAD:
       // scr_load_game();
        break;
}

room_persistent = false;
room_start_action = NEW_ROOM;

