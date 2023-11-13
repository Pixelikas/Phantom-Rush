///scr_move_state
movement = MOVE;
if(obj_input.dash_key) {
    var xdir = lengthdir_x(8, face*90);
    var ydir = lengthdir_y(8, face*90);
     if(obj_player_stats.stamina >= DASH_COST) {
     if(distance_to_object(obj_clickable_object_parent) > 128 ){
        // Dash
       _invulnerability = true;
       state = scr_dash_state;
       alarm[0] = room_speed*2;
       alarm[2] = room_speed*2;
       obj_player_stats.stamina -= DASH_COST;
       obj_player_stats.alarm[0] = room_speed;
       }
   }
}

else if(obj_input.attack_key) {
   image_index = 0;
   state = scr_attack_state;
}

else if(obj_input.spell_key && alarm[3] == -1 && obj_player_stats.bullets > 0){
obj_player_stats.bullets -= 1;
alarm[3] = room_speed/4;
MOVEMENT = SHOOT;
   audio_sound_pitch(snd_bullet_fire, random_range(0.8,1.2));
   audio_play_sound(snd_bullet_fire, 8, false);
    var _projectile = instance_create_depth(x,y+6, -10000,obj_player_projectile);
    var xforce = lengthdir_x(130, face*90);
    var yforce = lengthdir_y(130, face*90);
    _projectile.creator = id;
    with(_projectile){
        phy_fixed_rotation=true; 
        physics_apply_impulse(x,y, xforce, yforce);
    }
}


   
//}
   // var nearest_weapon = instance_nearest(x, y, obj_weapon_item);
   // if(place_meeting(x, y+4, nearest_weapon)){
   //     scr_swap_weapons(nearest_weapon);
   // }

else{
// Get direction
_direction = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis);

// Get the length
if(obj_input.xaxis == 0 && obj_input.yaxis == 0){
  _length = 0;
} else {
  _length = _speed;
  scr_get_face(_direction);
}

// Move
_hspeed = lengthdir_x(_length, _direction);
_vspeed = lengthdir_y(_length, _direction);

phy_position_x += _hspeed;
phy_position_y += _vspeed;

// Control the sprite
image_speed = sign(_length)*.3;
if(_length == 0) {
movement = IDLE;
} else {
if(face == RIGHT){
       image_speed = sign(_length)*.5;
      }
if(face ==  LEFT){
       image_speed = sign(_length)*.5;
   }
}

}