///@description scr_custscene_wait
///@arg seconds

timer++;

if(timer >= argument0 * room_speed){
	 timer = 0;
	 scr_cutscene_end_action();
}