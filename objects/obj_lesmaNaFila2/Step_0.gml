/// @description Insert description here
// You can write your code in this editor

//CONTROLA ANIMACAO
switch(animacao_atual){
	//IDLE
	case 0:
	   sprite_index = spr_lesma_idle_fila;
	break;
	//ANDANDO
	case 1:
	   sprite_index = spr_lesma_walk_fila;	
	break;
	//MORTA
	case 2:
	   sprite_index = spr_empty;	
	break;
	//HIT
	case 3:
	   sprite_index = spr_lesma_hit_fila;	
	break;
}

//CONTROLA ESTADO (VIVO = 0/MORTO = 1)
if(hp == 0){
	 hp = 3;
		  animacao_atual = 1;
		  alarm[0] = room_speed*5;
		  lesma_esperando = 1;
} else {
   	estado_atual = 0;
}


//CHECA ESTADO DA PROXIMA LESMA
  //se lesma proxima lesma morreu
  if(obj_lesmaNaFila1.estado_atual == 1){
	  //se esta lesma esta pronta pra andar
	  if(lesma_esperando == 0 && hp > 0){
		  obj_lesmaNaFila1.hp = 3;
		  obj_lesmaNaFila1.animacao_atual = 1;
		  obj_lesmaNaFila1.alarm[0] = room_speed*5;
		  obj_lesmaNaFila1.lesma_esperando = 1;
		  
		  hp = 3;
		  animacao_atual = 1;
		  alarm[0] = room_speed*5;
		  lesma_esperando = 1;
	  }
  }