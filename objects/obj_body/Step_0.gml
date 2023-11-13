/// @description Insert description here
// You can write your code in this editor

//hp handler
if(boss1_hp < 0){
	boss1_hp = 0;
}
if(boss1_hp == 0){
	for(var i=0; i<nodes; i++){ 
		instance_create_depth(body[i].xpos, body[i].ypos, 200, obj_explosion_fade);
		with(body[i]){
		   instance_destroy();	
		}
		obj_player_stats.alarm[2] = room_speed*2;
		instance_destroy();	
	}
}

//stage handler
if(next_stage_hp == boss1_hp){
	next_stage_hp = 4;
	stage = 2;
	   alarm[0] = room_speed*3;
	   for(var i=0; i<nodes; i++){
	   	    instance_create_depth(body[i].xpos, body[i].ypos, 200, obj_sand_fade);
		    body[i].xpos = 0;
		    body[i].ypos = 0;
	   }
} if(next_stage_hp == boss1_hp){
	next_stage_hp = -5;
	alarm[0] = -1;
	alarm[1] = room_speed*2;
	//reseta o disparo das balas
	for(var i=1; i<nodes; i++){
	body[i].alarm[1] = room_speed*3;
	}
}



//Movement
if(stage == 1){
var anchor_x = 0;
var anchor_y = 0;
 with (obj_path_anchor) {
	 if(anchor_id == obj_body.current_anchor){
		 anchor_x = phy_position_x;
		 anchor_y = phy_position_y;
	 }
 }
 if(point_distance(body[0].xpos, body[0].ypos, anchor_x, anchor_y ) < 4 ){
	 if(current_anchor < 14){
		 current_anchor++;
	 }else{
		 current_anchor = 1;
	 }
 }

 
 
mDir = point_direction(body[0].xpos, body[0].ypos,  anchor_x,  anchor_y);
//mDir = point_direction(body[0].xpos, body[0].ypos,  oPlayer.phy_position_x,  oPlayer.phy_position_y);

body[0].dir = mDir;
body[0].xpos += lengthdir_x(1 * 4, mDir);
body[0].ypos += lengthdir_y(1 * 4, mDir);


//Nodes
for(var i=1; i<nodes; i++){
    body[i].dir = point_direction(body[i].xpos, body[i].ypos, body[i-1].xpos, body[i-1].ypos);

    body[i].xpos = body[i-1].xpos + lengthdir_x(node_dist, body[i].dir-180);
    body[i].ypos = body[i-1].ypos + lengthdir_y(node_dist, body[i].dir-180);
}


//Edges
for(var i=0; i<nodes; i++){
 body[i].p0x = body[i].xpos + lengthdir_x(body[i].width/2, body[i].dir-90);
 body[i].p0y = body[i].ypos + lengthdir_y(body[i].width/2, body[i].dir-90);

 body[i].p1x = body[i].xpos + lengthdir_x(body[i].width/2, body[i].dir+90);
 body[i].p1y = body[i].ypos + lengthdir_y(body[i].width/2, body[i].dir+90);
}
}



if(stage == 3 && boss1_hp > 0){
var anchor_x = 0;
var anchor_y = 0;
 with (obj_path_anchor) {
	 if(anchor_id == obj_body.current_anchor){
		 anchor_x = phy_position_x;
		 anchor_y = phy_position_y;
	 }
 }
 if(point_distance(body[0].xpos, body[0].ypos, anchor_x, anchor_y ) < 4 ){
	 if(current_anchor < 14){
		 current_anchor++;
	 }else{
		 current_anchor = 1;
	 }
 }

 
 
//mDir = point_direction(body[0].xpos, body[0].ypos,  anchor_x,  anchor_y);
mDir = point_direction(body[0].xpos, body[0].ypos,  oPlayer.phy_position_x,  oPlayer.phy_position_y);

body[0].dir = mDir;
body[0].xpos += lengthdir_x(1 * 4, mDir);
body[0].ypos += lengthdir_y(1 * 4, mDir);


//Nodes
for(var i=1; i<nodes; i++){
    body[i].dir = point_direction(body[i].xpos, body[i].ypos, body[i-1].xpos, body[i-1].ypos);

    body[i].xpos = body[i-1].xpos + lengthdir_x(node_dist, body[i].dir-180);
    body[i].ypos = body[i-1].ypos + lengthdir_y(node_dist, body[i].dir-180);
}


//Edges
for(var i=0; i<nodes; i++){
 body[i].p0x = body[i].xpos + lengthdir_x(body[i].width/2, body[i].dir-90);
 body[i].p0y = body[i].ypos + lengthdir_y(body[i].width/2, body[i].dir-90);

 body[i].p1x = body[i].xpos + lengthdir_x(body[i].width/2, body[i].dir+90);
 body[i].p1y = body[i].ypos + lengthdir_y(body[i].width/2, body[i].dir+90);
}
}