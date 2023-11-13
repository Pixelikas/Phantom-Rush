/// @description  Draw the stats

//draw HP hearts
if(hp >= 1){
draw_sprite_ext(spr_life_full,0,32,16, 1.5, 1.5, 0, c_white, 1);
}else{
draw_sprite_ext(spr_life_empty,0,32,16, 1.5, 1.5, 0, c_white, 1);
}
if(hp >= 2){
draw_sprite_ext(spr_life_full,0,64,16, 1.5, 1.5, 0, c_white, 1);
}else{
draw_sprite_ext(spr_life_empty,0,64,16, 1.5, 1.5, 0, c_white, 1);
}
if(hp >= 3){
draw_sprite_ext(spr_life_full,0,96,16, 1.5, 1.5, 0, c_white, 1);
}else{
draw_sprite_ext(spr_life_empty,0,96,16, 1.5, 1.5, 0, c_white, 1);
}
if(hp >= 4){
draw_sprite_ext(spr_life_full,0,128,16, 1.5, 1.5, 0, c_white, 1);
}else{
draw_sprite_ext(spr_life_empty,0,128,16, 1.5, 1.5, 0, c_white, 1);
}
if(hp >= 5){
draw_sprite_ext(spr_life_full,0,160,16, 1.5, 1.5, 0, c_white, 1);
}else{
draw_sprite_ext(spr_life_empty,0,160,16, 1.5, 1.5, 0, c_white, 1);
}
if(global.healthupgrade = true){
if(hp = 6){
draw_sprite_ext(spr_life_full,0,192,16, 1.5, 1.5, 0, c_white, 1);
}else{
draw_sprite_ext(spr_life_empty,0,192,16, 1.5, 1.5, 0, c_white, 1);
}
}

//draw bullets
if(bullets >= 1){
draw_sprite_ext(spr_bullet_full,0,32,46, 1.5, 1.5, 0, c_white, 1);
}else{
draw_sprite_ext(spr_bullet_empty,0,32,46, 1.5, 1.5, 0, c_white, 1);
}
if(bullets >= 2){
draw_sprite_ext(spr_bullet_full,0,64,46, 1.5, 1.5, 0, c_white, 1);
}else{
draw_sprite_ext(spr_bullet_empty,0,64,46, 1.5, 1.5, 0, c_white, 1);
}
if(bullets >= 3){
draw_sprite_ext(spr_bullet_full,0,96,46, 1.5, 1.5, 0, c_white, 1);
}else{
draw_sprite_ext(spr_bullet_empty,0,96,46, 1.5, 1.5, 0, c_white, 1);
}
if(bullets >= 4){
draw_sprite_ext(spr_bullet_full,0,128,46, 1.5, 1.5, 0, c_white, 1);
}else{
draw_sprite_ext(spr_bullet_empty,0,128,46, 1.5, 1.5, 0, c_white, 1);
}
//draw stamina
draw_sprite_ext(_staminabar1.sprite_index,-1,27,80, 1.5, 1.5, 0, c_white, 1);
draw_sprite_ext(_staminabar2.sprite_index,-1,91,80, 1.5, 1.5, 0, c_white, 1);
draw_sprite_ext(_staminabar3.sprite_index,-1,155,80, 1.5, 1.5, 0, c_white, 1);


//draw_text(32,200, "vspeed: "+string(Teste_test));
//draw_text(32,220, "hspeed: "+string(obj_player._hspeed));

//draw_text(32,16, "hp: "+ string(hp) + "/" + string(maxhp));
//ficou faltando interface pro especial
//draw_text(32,64, "SPECIAL: "+string(special) + "/" + string(maxspecial));

//draw joystick buttons
//draw_sprite_ext(spr_ui, 0, 1470, 16, 1.5, 1.5, 0, c_white, 1);




