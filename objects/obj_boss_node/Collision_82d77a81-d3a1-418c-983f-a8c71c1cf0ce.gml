/// @description Insert description here
// You can write your code in this editor
if(obj_body.shield == false){
var at_least_one_node_hit = false;
	with (obj_boss_node) {
        if (nodo_been_hit == true) {
            at_least_one_node_hit = true;
            break;
        }
    }

if(at_least_one_node_hit == false){
  if(hp_nodo > 0){
	  //give player 1 bullet
	  if(obj_player_stats.bullets < 4){
        obj_player_stats.bullets += 1;
	  }
	  
  	  nodo_been_hit = true;
  	  alarm[2] = room_speed*2;
	
	 audio_sound_pitch(snd_player_takes_damage, random_range(0.8,1.2));
     audio_play_sound(snd_player_takes_damage, 8, false);
      hp_nodo -= 1;
      obj_body.boss1_hp -= 1;
	  instance_create_depth(xpos, ypos, 200, obj_explosion_fade_small);
  }
}
}