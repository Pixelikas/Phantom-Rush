/// @description bullet trigger
// You can write your code in this editor

if(kind_of_node == 2 && hp_nodo > 0 && obj_body.stage != 2){
	alarm[1] = room_speed*5;
	if(obj_body.shield_node_alive == true){
	  obj_body.shield = false;
	  obj_body.shield_node_anm = 0;
	  alarm[5] = room_speed*2;
	}
	 audio_sound_pitch(snd_bullet_fire, random_range(0.8,1.2));
     audio_play_sound(snd_bullet_fire, 8, false);
	var _projectile = instance_create_depth(xpos,ypos+32, -10000, obj_projectile);
    var xforce = lengthdir_x(60, dir-90);
    var yforce = lengthdir_y(60, dir-90);
    _projectile.creator = id;
    with(_projectile){
        phy_fixed_rotation=true; 
        physics_apply_impulse(x,y, xforce, yforce);
    }
    _projectile.knockback = 5;
	
	var _projectile2 = instance_create_depth(xpos,ypos+32, -10000, obj_projectile);
    var xforce2 = lengthdir_x(60, dir+90);
    var yforce2 = lengthdir_y(60, dir+90);
    _projectile2.creator = id;
    with(_projectile2){
        phy_fixed_rotation=true; 
        physics_apply_impulse(x,y, xforce2, yforce2);
    }
    _projectile2.knockback = 5;
}