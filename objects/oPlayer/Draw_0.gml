/// Add ourselves into the order table...
if(_flash_flag == true){
 gpu_set_fog(true, c_red, 0, 0);
draw_self();
gpu_set_fog(false, c_red, 0, 0);
}
else{
	OT_Add( id );
}
