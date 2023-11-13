/// @description Insert description here
// You can write your code in this editor

if(place_meeting(phy_position_x, phy_position_y, oPlayer_holeColMask)){
	
	    var _at_least_one_touching = false;
    with (obj_holeEdgeEsquerda) {
        if (colidindoEntrada == true) {
            _at_least_one_touching = true;
            break;
        }
    }
	
	 with (obj_holeEdgeDireita) {
        if (colidindoEntrada == true) {
            _at_least_one_touching = true;
            break;
        }
    }
	 
	 with (obj_holeEdgeCima) {
        if (colidindoEntrada == true) {
            _at_least_one_touching = true;
            break;
        }
    }
	 with (obj_holeEdgeBaixo) {
        if (colidindoEntrada == true) {
            _at_least_one_touching = true;
            break;
        }
    }
		 with (obj_holeEdgeBaixo_buracoAberto) {
        if (colidindoEntrada == true) {
            _at_least_one_touching = true;
            break;
        }
    }



//Caso 1: Jogador deu dash e caiu no buraco)
if(instance_exists(oPlayer)){
if(oPlayer.state == scr_move_state && _at_least_one_touching == false){
	   oPlayer._fallingY = y;
       oPlayer.state = scr_falling_state;
}
}
	
}