/// @description Collect experience

with (other){
    instance_destroy();
    audio_play_sound(snd_expr, 6, false);
}

// level up code
with (obj_player_stats){
    expr += 1;
    if (expr >= maxexpr) {
       level += 1;
       expr = expr-maxexpr;
       maxexpr *= 2;
       hp += 2;
       maxhp += 2;
       stamina += 2;
       maxstamina += 2;
       attack += 1;
    }
}

