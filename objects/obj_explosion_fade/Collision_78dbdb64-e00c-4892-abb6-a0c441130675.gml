/// @description Insert description here
// You can write your code in this editor

	
	//apply knockback
	var knockback = 10;
	 var _direction = point_direction(phy_position_x,phy_position_y, other.phy_position_x, other.phy_position_y);
	 var xforce = lengthdir_x(knockback, _direction);
   var yforce = lengthdir_y(knockback, _direction);
   with (other) {
      physics_apply_impulse(phy_position_x, phy_position_y, xforce, yforce);
   }
   
   if(alarm[0] == -1){
	alarm[0] = room_speed*2;
    obj_player_stats.hp -= 1;
   
}