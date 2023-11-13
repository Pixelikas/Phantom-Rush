/// @description  Damage the player
if(other.id != creator){
   obj_player_stats.hp -= damage;
   audio_play_sound(snd_player_hit, 9, false);
   //apply knockback
  if(instance_exists(creator)){
      var _direction = point_direction(creator.x,creator.y, other.x, other.y);
   } else {
      var _direction = point_direction(x, y, other.x, other.y);
   }
   var xforce = lengthdir_x(knockback, _direction);
   var yforce = lengthdir_y(knockback, _direction);
   with (other) {
      physics_apply_impulse(x, y, xforce, yforce);
   }
}

