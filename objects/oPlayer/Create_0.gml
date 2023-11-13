/// Init player

InitGlobals();

dir = DIR_STOP;
last_LR_dir = DIR_RIGHT;
//
//aqui ele ta puxando o sprite da tabela de sprites, q fica em initGlobals

//
//
phy_rotation = 0;
phy_fixed_rotation = true;
_cutscene_triggered = false;
_flash_countdown = 0;
_flash_countdown_previous = 0;
_flash_flag = false;
_invulnerability = false;
_dashtempo = 8;
alarm[1] = room_speed*0.3;
//teste : balas regenerando só com golpe de espada
//alarm[6] = room_speed*4;
_speed = 6;
_maxspeed = 10;
_basespeed = 6;
_hspeed = 0;
_vspeed = 0;
_length = 0;
_direction = 0;
image_speed = 0;
state = scr_move_state;
face = DOWN;
movement = MOVE;

instance_create_depth(phy_position_x, phy_position_y,350, oPlayer_holeColMask);
instance_create_depth(phy_position_x, phy_position_y,350, obj_player_hitbox_mask);


// Create the sprite array
script_execute(scr_player_sprite_load);

dx = 0;
dy = 0;

//WallMap = global.WallMap;
//DebugLayer = global.DebugLayer; 
//DebugMap = global.DebugMap; 

silhouette_colour = $3F3FAF;