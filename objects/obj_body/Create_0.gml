/// @description Insert description here
// You can write your code in this editor

//boss stats and variables
boss1_hp = 14;
next_stage_hp = 8;
shield = true;
shield_node_anm = -1;
shield_node_alive = true;
//stage the fight is on
// 1 = walking on a path
// 2 = attacks from under the sand
// 3 = chase the player
stage = 1;
//alarm[0] = room_speed*3;

//create the path
scr_anchor_creation();
current_anchor = 1;





//Constants
// Kind of node : 
// 0 = head
// 1 = hit
// 2 = dmg
// 3 = shield
// 4 = tail

//node attributes
 //   xpos, ypos, dir, width, p0x, p0y, p1x, p1y, kind_of_node


//Vars
nodes = 10;
node_dist = 64;
mDir = 0;


//Array
for(var i=0; i<nodes; i++){ 
	var node_instance = instance_create_depth(0, 0, 400, obj_boss_node);
	var last_node = nodes-1;
	
	switch(i){
		case 0: node_instance.kind_of_node = 0;
		break;
		case 2: node_instance.kind_of_node = 2;
		break;
		case 5: node_instance.kind_of_node = 2;
		break;
		case 6: node_instance.kind_of_node = 3;
		break;
        case 8: node_instance.kind_of_node = 2;
		break;
		case last_node: node_instance.kind_of_node = 4;
		break;
		default: node_instance.kind_of_node = 1;
		break;
	}
    node_instance.xpos = x - node_dist*i; 
    node_instance.ypos = y; 
    node_instance.dir = 0; 
    node_instance.width = 32;

    body[i] = node_instance;
}