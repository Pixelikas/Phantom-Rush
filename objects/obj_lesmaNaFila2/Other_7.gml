/// @description Insert description here
// You can write your code in this editor

//ATIVAR ESPERA DE TURNO DEPOIS DE ANDAR
if(animacao_atual == 1){
	lesma_esperando = 1;
	alarm[0] = room_speed*1;
}

if( estado_atual == 0){
	 animacao_atual = 0;
}