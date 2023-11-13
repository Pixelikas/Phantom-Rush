/// @description  Initialize the player's stats
Teste_test = 0;
deaths = 0;
hp = 5;
maxhp = hp;
_previousHP = maxhp;
bullets = 4;
stamina = 10;
maxstamina = stamina;
special = 1;
maxspecial = 10;
expr = 0;
maxexpr = 3;
level = 1;
attack = 1;
draw_set_colour(c_white);
alarm[1] = room_speed*1;

//draw UI
_staminabar1 = instance_create_depth(x,y, 100, obj_stamina_bar);
_staminabar1._valuemin = 1;
_staminabar1._valuemax = 4;

_staminabar2 = instance_create_depth(x,y, 100, obj_stamina_bar);
_staminabar2._valuemin = 4;
_staminabar2._valuemax = 7;

_staminabar3 = instance_create_depth(x,y, 100, obj_stamina_bar);
_staminabar3._valuemin = 7;
_staminabar3._valuemax = 10;

// Get the player's xtstart and ystart
if(instance_exists(obj_player)){
    player_xstart = obj_player.x;
    player_ystart = obj_player.y;
} else {
    player_xstart = 0;
    player_ystart = 0;
}

//Save the previous room 
previous_room = room;

room_start_action = NEW_ROOM;



