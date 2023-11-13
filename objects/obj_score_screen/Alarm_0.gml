/// @description Insert description here
// You can write your code in this editor

switch(obj_player_stats.deaths){
case 0:
   sprite_death_control = 0;
break;
case 1:
    sprite_death_control = 1;
break;
case 2:
    sprite_death_control = 2;
break;
default:
    sprite_death_control = 3;
break;
}