/// @description scr_dash_state
image_speed = 1.2;
audio_sound_pitch(snd_dash, random_range(0.8,1.2));
audio_play_sound(snd_dash, 6, false);
movement = DASH;
if (_length == 0) {
_direction = face*90;
}
_length = _speed*6; //was 4

// Move
_hspeed = lengthdir_x(_length, _direction);
_vspeed = lengthdir_y(_length, _direction);

_checkcollision = false

//checar colisao com uma parede
if(collision_line(phy_position_x, phy_position_y, (phy_position_x + _hspeed), (phy_position_y + _vspeed), obj_wall_parent, false, true)  ){
_checkcollision = true;
}
//checar colisao com uma caixa
if(collision_line(phy_position_x, phy_position_y, (phy_position_x + _hspeed), (phy_position_y + _vspeed), obj_box, false, true)  ){
_checkcollision = true;
}
//checar colisao com um gate block
if(collision_line(phy_position_x, phy_position_y, (phy_position_x + _hspeed), (phy_position_y + _vspeed), obj_gate_block, false, true)  ){
_checkcollision = true;
}




//} 
if(_checkcollision = true){}
else{
phy_position_x += _hspeed;
phy_position_y += _vspeed;
}

// Create the dash effect
var dash = instance_create_depth(x, y, 100, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;

