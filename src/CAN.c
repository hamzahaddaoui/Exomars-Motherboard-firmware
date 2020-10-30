#include <stdarg.h>
#warning CAN_sorgente compilata
void canSetup(void){
	canConfigMode();
    //Freq. bus, Tq
    BRGCON1=0b00000011;                //Sinc=1,Prescaler=4,Tq=(2x4)/8MHz=1us
    BRGCON2=0b10011000;                //x,x, PhSeg1=4xTq, Prop. Seg=1xTq
    BRGCON3=0b00000011;                //0,0,x,x,x, PhSeg2=4xTq
                                            //Tq=1us
                                            //Tbit=Sync(1)+Prop(1)+Ph1(4)+Ph2(4)=10us
                                            //Freq. bus = 100KHz
    RXM0SIDL=0;                       	//tutti gli indirizzi vengono accettati
    RXM1SIDL=0;        		//vengono analizzati i tre bit di peso minore
	RXB0SIDL=0;
    RXF0SIDL=0;                       	//filtro 0
    RXF1SIDL=0;                       	//filtro 1
	RXF2SIDL=0;
    TXB0SIDL=0;                     	//ID LOW (bit0,1,2) trasmissione = 0;
	//maschera e filtri da applicare
    //RXM1SIDH=0xFF;                  	//bit di maschera attivi
    RXM0SIDH=0B11111111;  				//bit di maschera attivi
    RXF0SIDH=0x40;                    	//ID filtro 0
    RXF1SIDH=0x00;                  //ID filtro 1
    //-------- configurazione registri di ricezione
    // RXB0 buffer CONTROL
    RXB0CON=0b00100110;					//riceve solo messaggi con Id standard e senza errori, OVERFLOW su RXB1,Filter0                                              
	//-------- CAN I/O control register
    CIOCON=0b00100000;                 	//TX a VDD quando recessivo
    RXB0IE = 1;
    canNormalMode();
}

void canConfigMode(void){
	CANCON = 0b10010000;
    while((CANSTAT & 0b11100000) != 0b10000000);
    //B0ABAT = 0;        
}

void canNormalMode(void){
    CANCON = 0b00010000;
    while((CANSTAT & 0b11100000) != 0b00000000);
    //B0ABAT = 0;
}

void canLoopbackMode(void){
	CANCON = 0b01010000;
	while((CANSTAT & 0b11100000) != 0b01000000);
	//B0ABAT = 0;
}
void canTX(int nData, ...){
	nData++;
	while(TXB0REQ);
	va_list ap;
	va_start(ap, nData);
	TXB0DLC = nData - 1;
	TXB0SIDH = va_arg(ap, int);
	TXB0D0 = va_arg(ap, int);
	TXB0D1 = va_arg(ap, int);
	TXB0D2 = va_arg(ap, int);
	TXB0D3 = va_arg(ap, int);
	TXB0D4 = va_arg(ap, int);
	TXB0D5 = va_arg(ap, int);
	TXB0D6 = va_arg(ap, int);
	TXB0D7 = va_arg(ap, int);
	va_end(ap);
	TXB0REQ=1;
}

void canRX(void){
	unsigned char canRX[8], ID, DLC;
	canRX[0] = RXB0D0;
	canRX[1] = RXB0D1;
	canRX[2] = RXB0D2;	
	canRX[3] = RXB0D3;
	canRX[4] = RXB0D4;
	canRX[5] = RXB0D5;
	canRX[6] = RXB0D6;
	canRX[7] = RXB0D7;
	DLC = RXB0DLC;
	
	for (i=DLC;i<8;i++){
		canRX[i] = 0;
	}
	ID=RXB0SIDH;
	
	RXB0FUL=0;					//reset FLAG FULL BUFFER
	RXB0IF=0;        			//reset FLAG INTERRUPT RX
	switch(ID){
		//ERRORI-----------------------------------------	
		case canERROR_mov1:
			break; 
		case canERROR_mov2:
			break;
		case canERROR_mov3:
			break;
		case canERROR_mov4:
			break;
		case canERROR_mov5:
			break;
		case canERROR_mov6:
			break;
		case canERROR_rot1:
			break;
		case canERROR_rot3:
			break;
		case canERROR_rot4:
			break;
		case canERROR_rot6:
			break;
		case canERROR_trapano:
			break;
		case canERROR_camera:
			break;
		case canERROR_sensori:
			break;
		case canERROR_alimentazione:
			break;
		case canERROR_cassetto:
			break;
		//-------------------------------------------------------
		//DATI---------------------------------------------------
		case canRX_mov1:
			mov1_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
			periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
			periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
			if (ruote[0].distanza <= periferiche_Ruote[0].distanzaAttuale){
				posizioneMov1 = 0;
			}
			else{
				posizioneMov1 = 1; 
			}
			break;
		case canRX_mov2:
			mov2_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
			periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
			periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
			if (ruote[1].distanza <= periferiche_Ruote[1].distanzaAttuale){
				posizioneMov2 = 0;
			}
			else{
				posizioneMov2 = 1; 
			}
			break;
		case canRX_mov3:
			mov3_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
			periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
			periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
			if (ruote[2].distanza <= periferiche_Ruote[2].distanzaAttuale){
				posizioneMov3 = 0;
			}
			else{
				posizioneMov3 = 1; 
			}
			break;
		case canRX_mov4:
			mov4_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
			periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
			periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
			if (ruote[3].distanza <= periferiche_Ruote[3].distanzaAttuale){
				posizioneMov4 = 0;
			}
			else{
				posizioneMov4 = 1; 
			}
			break;
		case canRX_mov5:
			mov5_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
			periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
			periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
			if (ruote[4].distanza <= periferiche_Ruote[4].distanzaAttuale){
				posizioneMov5 = 0;
			}
			else{
				posizioneMov5 = 1; 
			}
			break;
		case canRX_mov6:
			mov6_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Ruote[0].velocitaAttuale = canRX[1] + (canRX[2] << 8);
			periferiche_Ruote[0].distanzaAttuale = canRX[3] + (canRX[4] << 8);
			periferiche_Ruote[0].pwmAttuale = canRX[5] + (canRX[6] << 8);
			if (ruote[5].distanza <= periferiche_Ruote[5].distanzaAttuale){
				posizioneMov6 = 0;
			}
			else{
				posizioneMov6 = 1; 
			}
			break;
		case canRX_rot1:
			rot1_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Ruote[0].angoloAttuale = canRX[0];
			if (ruote[0].angolo <= periferiche_Ruote[0].angoloAttuale){
				posizioneRot1 = 0;
			}
			else{
				posizioneRot1 = 1; 
			}
			break;
		case canRX_rot3:
			rot3_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Ruote[2].angoloAttuale = canRX[0];
			if (ruote[2].angolo <= periferiche_Ruote[2].angoloAttuale){
				posizioneRot3 = 0;
			}
			else{
				posizioneRot3 = 1; 
			}
			break;
		case canRX_rot4:
			rot4_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Ruote[3].angoloAttuale = canRX[0];
			if (ruote[3].angolo <= periferiche_Ruote[3].angoloAttuale){
				posizioneRot4 = 0;
			}
			else{
				posizioneRot4 = 1; 
			}
			break;
		case canRX_rot6:
			rot6_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Ruote[5].angoloAttuale = canRX[0];
			if (ruote[5].angolo <= periferiche_Ruote[5].angoloAttuale){
				posizioneRot6 = 0;
			}
			else{
				posizioneRot6 = 1; 
			}
			break;
		case canRX_trapano:
			trapano_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Trapano = canRX[0];
			if (trapano == periferiche_Trapano){
				posizioneTrapano = 0;
			}
			else{
				posizioneTrapano = 1; 
			}
			break;
		case canRX_camera:
			camera_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_CameraXY[0] = canRX[0];
			periferiche_CameraXY[1] = canRX[1];
			if (cameraXY[0] == periferiche_CameraXY[0]){
				posizioneCameraX = 0;
			}
			else{
				posizioneCameraX = 1; 
			}
			if (cameraXY[1] == periferiche_CameraXY[1]){
				posizioneCameraY = 0;
			}
			else{
				posizioneCameraY = 1; 
			}
			break;
		case canRX_sensori:
			sensori_online = 1;
			if (DLC == 0){
				return;
			}
			break;
		case canRX_alimentazione:
			alimentazione_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_statoBatterie = canRX[0];
			break;
		case canRX_cassetto:
			cassetto_online = 1;
			if (DLC == 0){
				return;
			}
			periferiche_Cassetto = canRX[0];
			if (periferiche_Cassetto == 0 && cassetto == 1){
				cassetto == 0;
				posizioneCassetto = 0;
			}
			else{
				posizioneCassetto = 1; 
			}
			break;
		default :
			break;        
	}
}
