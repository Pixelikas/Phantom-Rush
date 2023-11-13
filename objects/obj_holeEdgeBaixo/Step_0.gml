/// @description Insert description here
// You can write your code in this editor



if(place_meeting(phy_position_x, phy_position_y, oPlayer_holeColMask)){
  if(instance_exists(oPlayer)){
  if(oPlayer.face == DOWN || oPlayer.face == LEFT ||	 oPlayer.face == RIGHT ){
	  colidindoEntrada = true;
  }
  if(oPlayer.face == UP){
	  colidindoSaida = true;
  }
  }

} else{
	colidindoEntrada = false;
    colidindoSaida = false;
}