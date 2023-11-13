/// @description Insert description here
// You can write your code in this editor



  if(hp > 0){ 	  
      hp -= 1;
      obj_body.boss1_hp -= 1;
  }

//give player 1 bullet
	  if(obj_player_stats.bullets < 4){
        obj_player_stats.bullets += 1;
	  }