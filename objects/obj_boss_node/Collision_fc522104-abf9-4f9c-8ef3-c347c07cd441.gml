/// @description Insert description here
// You can write your code in this editor

var at_least_one_node_dmg = false;
	with (obj_boss_node) {
        if (alarm[0] != -1) {
            at_least_one_node_dmg = true;
            break;
        }
    }

if(alarm[0] == -1 && at_least_one_node_dmg == false){
	alarm[0] = room_speed*3;
	obj_player_stats.hp -= 1;
	
	audio_sound_pitch(snd_player_hit, random_range(0.8,1.2));
     audio_play_sound(snd_player_hit, 8, false);
	//apply knockback
	var knockback = 10;
	 var _direction = point_direction(xpos,ypos, other.phy_position_x, other.phy_position_y);
	 var xforce = lengthdir_x(knockback, _direction);
   var yforce = lengthdir_y(knockback, _direction);
   with (other) {
      physics_apply_impulse(phy_position_x, phy_position_y, xforce, yforce);
   }
}