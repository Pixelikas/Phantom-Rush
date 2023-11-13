//Script for objects that have a button pressed action

//check key being pressed
if(distance_to_object(obj_player) < 128 ){
 if(gamepad_is_connected(0)) {
   if (gamepad_button_check_pressed(0, gp_face1)){
       button_sub_image = 0;   //reset your counter
       }
   if (gamepad_button_check(0, gp_face1)){
       if(button_sub_image <12){
       button_sub_image += 1;     //add to your counter
       }
       }
   if (gamepad_button_check_released(0, gp_face1)){
      if(button_sub_image == 12){
         image_speed = .5;
         sprite_index = sprite_for_animation;
      }
      button_sub_image = 0;
       }
 }else{
   if (keyboard_check_pressed(vk_space)){
       button_sub_image = 0;   //reset your counter
       }
   if (keyboard_check(vk_space)){
       if(button_sub_image <12){
       button_sub_image += 1;     //add to your counter
       }
       }
   if (keyboard_check_released(vk_space)){
      if(button_sub_image == 12){
            image_speed = .5;
            sprite_index = sprite_for_animation;
      }
      button_sub_image = 0;
       }
    }
}
