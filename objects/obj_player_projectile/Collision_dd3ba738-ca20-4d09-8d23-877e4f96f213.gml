
if(other.id != creator){

    other.hp -= 1;
    
    // Apply knockback
    
  var _direction = point_direction(0,0, phy_speed_x, phy_speed_y);
   var xforce = lengthdir_x(knockback, _direction);
   var yforce = lengthdir_y(knockback, _direction);
   with (other) {
      physics_apply_impulse(x, y, xforce, yforce);
   }
   
   alarm[0] = 1;
   
}

