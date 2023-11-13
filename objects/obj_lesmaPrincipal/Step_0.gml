/// @description Insert description here
// You can write your code in this editor

//CONTROLA ANIMACAO
switch(animacao_atual){
	//IDLE
	case 0:
	   sprite_index = spr_lesma_idle;
	break;
	//ANDANDO
	case 1:
	   sprite_index = spr_lesma_walk;	
	break;
	//MORTA
	case 2:
	   sprite_index = spr_empty;	
	break;
	//HIT
	case 3:
	   sprite_index = spr_lesma_hit;	
	break;
}

//CONTROLA ESTADO (VIVO = 0/MORTO = 1)
if(hp == 0){
	estado_atual = 1;
	animacao_atual = 2;
} else {
   	estado_atual = 0;
}

//controla a parede ivisivel para o jogador não atravessa o boss
if(estado_atual == 1 && obj_lesmaNaFila1.lesma_esperando == 1){
	if(instance_exists(obj_bossBlock)){
		with(obj_bossBlock){
		 instance_destroy();	
		}
	}
}else {
if(!instance_exists(obj_bossBlock)){
	instance_create_layer(phy_position_x,phy_position_y, "Colisions", obj_bossBlock);
}
}