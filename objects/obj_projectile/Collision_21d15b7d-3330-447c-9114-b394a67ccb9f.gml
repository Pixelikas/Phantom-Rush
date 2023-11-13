if(oPlayer.state != scr_dash_state){
audio_play_sound(snd_player_takes_damage, 9, false);
if(alarm[1] == -1){
alarm[1] = room_speed*2;
obj_player_stats.hp -= 1;
}

//Esse impulso por algum motivo fica repetindo empurrando o player na direção

var _direction = point_direction(0,0, phy_speed_x, phy_speed_y);
   var xforce = lengthdir_x(knockback, _direction);
   var yforce = lengthdir_y(knockback, _direction);
   with (oPlayer) {
      physics_apply_impulse(x, y, xforce, yforce);
   }
   
   alarm[0] = 1;
}

