/*Evento Create do jogador
inicializa suas variáveis e seu array de sprites
*/
//set fixed rotation
_checkcollision = false
_dashmask = instance_create_depth(x,y, 0, obj_dash_mask);
_hitboxmask = instance_create_depth(x,y, 0, obj_player_hitbox_mask);
if(instance_number(obj_player) > 1) instance_destroy();
event_inherited();
_invulnerability = false;
_dashtempo = 8;
_speed = 6;    // Velocidade atual
_maxspeed = 10;  // Velocidade máxima (atingida após um dash)
_basespeed = 6;  // Velocidade base
alarm[1] = room_speed*0.3; // Alarme[1] controla a inércia pós dash
_hspeed = 0;  //Velocidade horizontal
_vspeed = 0;  //Velocidade vertical
xaxis = 0;  // Variáveis p/ controle de direção do sprite
yaxis = 0;  // Variáveis p/ controle de direção do sprite
_length = 0;  // Variáveis p/ controle de direção do sprite
_direction = 0;  // Variáveis p/ controle de direção do sprite
image_speed = 0;  // Velocidade da animação
state = scr_waking_state;  //Executa o script que controla o movimento do jogador
//direction sprite is facing
face = DOWN;
movement = WAKING;
_player_iscontrolling = "letterman";
sprite_loading_script = scr_letterman_sprite_loading;
_draw_aura = false; // flag for drawing event
silhouette_colour = $3F3FAF;


// Create the sprite array
script_execute(scr_letterman_sprite_loading);

/* */
/*  */
