/// @description Insert description here
// You can write your code in this editor

if(place_meeting(phy_position_x, phy_position_y, oPlayer_holeColMask)){
  if(instance_exists(oPlayer)){
  if(oPlayer.face == RIGHT || oPlayer.face == UP || oPlayer.face == DOWN){
	  colidindoEntrada = true;
  }
  if(oPlayer.face == LEFT){
	  colidindoSaida = true;
  }
  }

} else{
	colidindoEntrada = false;
    colidindoSaida = false;
}