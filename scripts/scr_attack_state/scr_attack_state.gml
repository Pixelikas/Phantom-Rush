/// @description scr_attack_state
image_speed = .5;
movement = ATTACK;


if (scr_animation_hit_frame(2)){
    var xx = 0;
    var yy = 0;
    switch (face){
       case DOWN:
            xx = x-32;
            yy = y-22;
            break;
       case UP:
            xx = x-32;
            yy = y-22;
            break;
       case RIGHT:
            xx = x+10;
            yy = y-15;
            break;
       case LEFT:
            xx = x-74;
            yy = y-15;
            break;
    }

   audio_sound_pitch(snd_laser_sword, random_range(0.8,1.2));
   audio_play_sound(snd_laser_sword, 8, false);
   var damage = instance_create_depth(xx,yy, -10000,obj_sword_dmg);
   damage.sprite_index = spr_sword_hitbox; // change dmg hitbox 
   damage.creator = id;
   damage.damage = obj_player_stats.attack;
}

