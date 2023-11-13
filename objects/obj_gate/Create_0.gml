/// @description 
counter = 0;
button_sub_image = 0;
sprite_for_closed = spr_gate_closed;
sprite_for_animation = spr_gate_anm;
sprite_for_open = spr_empty;
sprite_index = sprite_for_closed;
_wallmask = instance_create_depth(x,y, 0, obj_gate_mask);

/// initialize the door
new_x = 0;
new_y = 0;
new_room = noone;

