/// @description  Change back to move state
if( state == scr_attack_state) {
   state = scr_move_state;
   attacked = false;
}
if(state == scr_dash_state){
   //if (place_meeting(x,y,obj_ground_parent)){ 
       //that fuck things up VV
      //_speed = _maxspeed; // Aumenta a velocidade após o dash p/ criar efeito de inércia
      state = scr_move_state;
  // }else{
  // _fallingY = y;
  // state = scr_falling_state;
 //  }
}

