/// @description Movement
//controle do efeito sonoro de passo
if(movement = MOVE){
 if(!audio_is_playing(snd_step)){
audio_play_sound(snd_step, 6, false);
}
} else {
audio_stop_sound(snd_step);
}
// controle da ordem de desenho
if(state != scr_falling_state){
//depth = -y; legacy
}else{
// depth = 100003; ALTERAR P/ UM LAYER DE BACKGROUND
}
// re-executa estado e re-desenha sprite
script_execute(state);

sprite_index = sprite[face, movement];

//check for death
if(obj_player_stats.hp <= 0){
  instance_destroy();
   
}

/*//check for hole
if(distance_to_object(obj_hole) < 8 && movement != DASH){
_speed = 1;
} else{
_speed = 6;
}*/


/* */
/*  */
