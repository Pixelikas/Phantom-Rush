



// controle de level
{
   if(global.expr >= global.maxexpr) {
      global.level+=1;
      global.hp+=5;
      global.maxhp +=5;
      global.expr = global.expr-global.maxexpr;
      global.maxexpr *= 2;
   }
  

//Respawn de jogador em caso de morte 
/*
if(!instance_exists(obj_player)){
with(obj_player_stats._staminabar1)
instance_destroy();
with(obj_player_stats._staminabar2)
instance_destroy();
with(obj_player_stats._staminabar3)
instance_destroy();
with(obj_player_stats){
instance_destroy();
}
instance_create_depth(0, 0, 600, obj_player_stats);
instance_create_depth(global.respawn_x , global.respawn_y, 1000, obj_player);
 
}*/

}

