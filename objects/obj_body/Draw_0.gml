/// @description Insert description here
// You can write your code in this editor


if(boss1_hp > 0){
//Draw with triangles
if(stage != 2){
	
for(var i=1; i<nodes; i++){
 draw_triangle(body[i-1].p0x, body[i-1].p0y, body[i-1].p1x, body[i-1].p1y, body[i].p0x, body[i].p0y, false);
 draw_triangle(body[i].p1x, body[i].p1y, body[i-1].p1x, body[i-1].p1y, body[i].p0x, body[i].p0y, false);
}

for(var i=0; i<nodes; i++){
  if(body[i].hp_nodo > 0){
    if(body[i].kind_of_node == 0){
		if(body[i]._flash_flag == true){
		gpu_set_fog(true, c_red, 0, 0);
        draw_sprite_ext( spr_b1_head, -1, body[i].xpos, body[i].ypos, 1, 1, body[i].dir, -1, 1 );
        gpu_set_fog(false, c_red, 0, 0);
		}else{
		draw_sprite_ext( spr_b1_head, -1, body[i].xpos, body[i].ypos, 1, 1, body[i].dir, -1, 1 );
		}
	}
	 if(body[i].kind_of_node == 1){
		 if(body[i]._flash_flag == true){
		gpu_set_fog(true, c_red, 0, 0);
        draw_sprite_ext( spr_b1_hit_node, -1, body[i].xpos, body[i].ypos, 1, 1, body[i].dir, -1, 1 );
        gpu_set_fog(false, c_red, 0, 0);
		}else{
		 draw_sprite_ext( spr_b1_hit_node, -1, body[i].xpos, body[i].ypos, 1, 1, body[i].dir, -1, 1 );
		}
	}
	 if(body[i].kind_of_node == 2){
		 if(body[i]._flash_flag == true){
		gpu_set_fog(true, c_red, 0, 0);
        draw_sprite_ext( spr_b1_dmg_node, -1, body[i].xpos, body[i].ypos, 1, 1, body[i].dir, -1, 1 );
        gpu_set_fog(false, c_red, 0, 0);
		}else{
		 draw_sprite_ext( spr_b1_dmg_node, -1, body[i].xpos, body[i].ypos, 1, 1, body[i].dir, -1, 1 );
		}
	}
	 if(body[i].kind_of_node == 3){
		 if(body[i]._flash_flag == true){
		 gpu_set_fog(true, c_red, 0, 0);
        draw_sprite_ext( spr_b1_shield_node, shield_node_anm, body[i].xpos, body[i].ypos, 1, 1, body[i].dir, -1, 1 );
        gpu_set_fog(false, c_red, 0, 0);
		}else{
		 draw_sprite_ext( spr_b1_shield_node, shield_node_anm, body[i].xpos, body[i].ypos, 1, 1, body[i].dir, -1, 1 );
		}
	}
	if(body[i].kind_of_node == 4){
		 if(body[i]._flash_flag == true){
		 gpu_set_fog(true, c_red, 0, 0);
        draw_sprite_ext( spr_b1_last_node, -1, body[i].xpos, body[i].ypos, 1, 1, body[i].dir, -1, 1 );
        gpu_set_fog(false, c_red, 0, 0);
		}else{
		 draw_sprite_ext( spr_b1_last_node, -1, body[i].xpos, body[i].ypos, 1, 1, body[i].dir, -1, 1 );
		}
	}
  }
}

//escudo do estágio 1
if(shield == true){
for(var i=0; i<nodes; i++){
 draw_sprite_ext( spr_b1_shield, -1, body[i].xpos, body[i].ypos, 1, 1, body[i].dir, -1, 1 );
 if(body[i].kind_of_node == 0){
	 draw_sprite_ext( spr_b1_shield_frontback, -1, body[i].xpos, body[i].ypos, 1, 1, body[i].dir+90, -1, 1 );
 }
 if(body[i].kind_of_node == 4){
	 draw_sprite_ext( spr_b1_shield_frontback, -1, body[i].xpos, body[i].ypos, 1, 1, body[i].dir-90, -1, 1 );
 }
}
}
}
}