/// @description Insert description here
// You can write your code in this editor
/// @description  Stall alarm
 audio_sound_pitch(snd_bullet_fire, random_range(0.8,1.2));
   audio_play_sound(snd_bullet_fire, 3, false);

var _projectile = instance_create_depth(x,y+32, -10000, obj_projectile);
    var xforce = lengthdir_x(60, face*90);
    var yforce = lengthdir_y(60, face*90);
    _projectile.creator = id;
    with(_projectile){
        phy_fixed_rotation=true; 
        physics_apply_impulse(x,y, 0, 30);
    }
    _projectile.knockback = 5;
    alarm[2] = room_speed*3;

