

sprite_index = spr_empty;

//all about  moving--------------------------
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
//all about  moving----------------------------

//check for an enemy close by
if(distance_to_object(obj_enemy_parent) < 128 ){
 _enemy_selected = instance_nearest(x, y, obj_enemy_parent);
 _draw_aura = true;
 if(obj_input.dash_key || obj_input.swap_key){
     //do it
     _draw_aura = false;
     phy_position_x = _enemy_selected.x;
     phy_position_y = _enemy_selected.y;
     _player_iscontrolling = _enemy_selected.en_id;
     script_execute(_enemy_selected.sprite_loading_script);
     with(_enemy_selected){
        instance_destroy();
     }
     state = scr_move_state;
   }
 }
 if(distance_to_object(obj_enemy_parent) > 128 ){
 _draw_aura = false;
 }
