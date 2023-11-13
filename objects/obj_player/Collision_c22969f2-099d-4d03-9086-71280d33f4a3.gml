/// @description Collect bullet

with (other){
    instance_destroy();
    audio_play_sound(snd_expr, 6, false);
}

// level up code
if(obj_player_stats.bullets < 4){
    obj_player_stats.bullets += 1;
}

