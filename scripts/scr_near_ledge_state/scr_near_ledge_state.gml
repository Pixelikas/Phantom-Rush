
movement = NEARLEDGE;

_start_condition = noone;
_continue_codition = noone;
_release_condition = noone;
_target_button = vk_space // botão na direção q ele vai morrer
_push_backy = 0; // direção q ele vai voltar 
_push_backx = 0; // direção q ele vai voltar 

//caso seja teclado
if(!gamepad_is_connected(0)) {
switch (face){
   case DOWN:
   _target_button = vk_down;
   _push_backy = -1;
   _push_backx = 0;
   break;
   case UP:
   _target_button = vk_up;
   _push_backy = +1;
   _push_backx = 0;
   break; 
   case LEFT:
   _target_button = vk_left;
   _push_backy = 0;
   _push_backx = +1;
   break;
   case RIGHT:
   _target_button = vk_right;
   _push_backy = 0;
   _push_backx = -1;
   break;
}

   if (keyboard_check(_target_button)){
       if(_target_button_time <36){
       _target_button_time += 1;     //add to your counter
       }
       if(_target_button_time > 26){
       phy_position_x = phy_position_x + ((_push_backx/3)*-1);
       phy_position_y = phy_position_y + ((_push_backy/3)*-1);
       }
       if(_target_button_time >= 36){
       phy_position_x = phy_position_x + ((_push_backx*16)*-1);
       phy_position_y = phy_position_y + ((_push_backy*16)*-1);
       _fallingY = y;
       state = scr_falling_state
       }
       }
   if (keyboard_check_released(_target_button)){
      phy_position_y = phy_position_y + _push_backy*6;
      phy_position_x = phy_position_x + _push_backx*6;
      state = scr_move_state
      }

}
//caso seja gamepad
if(gamepad_is_connected(0)) {

}
