// Inicialização variáveis globais do jogo
{
   global.level = 1;
   global.hp = 5;
   global.maxhp = 5;
   global.expr = 0;
   global.maxexpr = 2;
   global.healthupgrade = false;
   global.is_first_life = true;
   global.previoushp = 5;
   global.totem1destroyed = false;
   global.totem2destroyed = false;
   global.totem3destroyed = false;
   global.totem4destroyed = false;
   global.numberofkills = 0;
   if (instance_exists(obj_player)){
   global.respawn_x = obj_player.x;
   global.respawn_y = obj_player.y;
   }
   
   
   
   

}

