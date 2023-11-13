/// @description Collect health

with (other){
    instance_destroy();
    audio_play_sound(snd_expr, 6, false);
}

// level up code
if(obj_player_stats.hp < obj_player_stats.maxhp ){
    obj_player_stats.hp += 1;
}

