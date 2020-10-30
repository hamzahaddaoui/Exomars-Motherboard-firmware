#include <xc.h>
#include <math.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "putch.c"
#include "getche.c"

#include "schedaMaster.h"
#include "CAN.c"
#include "Bluetooth.c"

__CONFIG(1, INTCLKO);
__CONFIG(2, PWRTEN & WDTPS1 & WDTDIS);
__CONFIG(4, DEBUGEN & LVPDIS);

void main(){
	picSetup();
	canSetup();
	bluetoothSetup();
	PEIE= 1;
	GIE = 1;
	canTX(0, canTX_tutto);					//CHECK PERIFERICHE SE ONLINE O NO	
	while(1){
		if (serialData_NEW){
			serialData_NEW = 0;
			bluetoothRX();
		}
		else if (ruoteData_NEW){
			ruoteData_NEW = 0;
			ruoteRoutine();
    	}
    	
    	else if (cameraData_NEW){
    		cameraData_NEW = 0;
			cameraRoutine();
    	}
    	else if (trapanoData_NEW && posizioneTrapano == 0 && posizioneCassetto == 0){ //se il trapano o cassetto non sono in posizione definita
			trapanoData_NEW = 0;
			trapanoRoutine();
			canTX(1, canTX_trapano, trapano);
    	}
		/*else if (posizioneRot1 == 0 && posizioneRot3 == 0 && posizioneRot4 == 0 && posizioneRot6 == 0){
			canTX(1, canTX_ruote, 0);							//quando in posizione parti
		}*/
	}
	
}

void picSetup(){
	OSCCON= 0b01110000;				//8MHZ clock
    ADCON1= 0x0F;					//PortA Digital I/O
	TRISB = 0b11111011;				//RB2=CANTX=out, RB3=CANRX=in
	TRISC = 0b10111111;	
}

void interrupt my_ISR(){
	if (RXB0IF && RXB0IE){
		RXB0IF=0;        			//reset FLAG INTERRUPT RX
		canRX();
	}
	if(RCIE && RCIF){
		RCIF=0;
		bufferDataRX[k] = RCREG;
		if (bufferDataRX[0] == '@'){
			if (k<18) k++;
			else{
				if(bufferDataRX[18] == '$') serialData_NEW = 1;
				else{
					k=0;
					bufferDataRX[0] = 0;
					bufferDataRX[18] = 0;
				}
			}
		}
		
	}	
	
}

void cameraRoutine(){
    cameraXY[0] = console_rotazioneCamera - 90;
    cameraXY[1] = console_inclinazioneCamera - 60;
    canTX(2, canTX_camera, cameraXY[0], cameraXY[1]);
}

void trapanoRoutine(){	
	if (console_cassetto == 1){
		posizioneTrapano = 1; 
		periferiche_Trapano == 0b00001010;					//posizione cassetto
		return;
	}
	if (cassetto == 0 && periferiche_Cassetto == 0){
		if (trapano == 0b00001010){							//se trapano posizione cassetto 
			posizioneCassetto = 1;
			cassetto = 1;									//apro il cassetto
    		canTX(1, canTX_cassetto, cassetto);
		}	
    	if (console_posizioneTrapano == 0){					//posizione riposo
	    	posizioneTrapano = 1; 
    		trapano = 0b00001000;							//porta trapano in posizione di riposo
    		return;
		}
    	if (console_posizioneTrapano == 1 && cassetto==0 && periferiche_Cassetto == 0 && console_cassetto == 0){	
	    	posizioneTrapano = 1; 	
			trapano = ((console_rotazioneTrapano & 0x01) << 5) + ((console_puntaTrapano & 0x01) << 4) + 0b0111; //15 -> posizione lavoro
			return;
		}
	}
}



void ruoteRoutine(){
	float dICR_R[6]; 	//distanza ruote - ICR
	float velocitaMovimento;
	float massimaDistanza;	
	velocitaMovimento = ((float)(maxVel * console_velocitaRuote) / 255); //velocità ruote (in proporzione a velocità massima)
	massimaDistanza = 0;
	if (console_raggioRuote == 0 || console_velocitaRuote == 0){		//se fermo
		for (i=0;i<6;i++){
			ruote[i].direzione = 0;
		}
		canTX(1, canTX_ruote, 1);
		return;
	}
	
	else if (console_raggioRuote == -2 || console_raggioRuote == 2){
		if (console_raggioRuote == -2){
			for (i=0;i<3;i++){
				ruote[i].direzione = -1;
			}
			for (i;i<6;i++){
				ruote[i].direzione = 1;
			}
		}
		else{
			for (i=0;i<3;i++){
				ruote[i].direzione = 1;
			}
			for (i;i<6;i++){
				ruote[i].direzione = -1;
			}
		}
		
		ruote[0].angolo = (float) 45 * gradiBit;		//45 gradi
		ruote[2].angolo = (float) 135 * gradiBit;		//-45 gradi
		ruote[3].angolo = (float) 45 * gradiBit;		//45 gradi
		ruote[5].angolo = (float) 135 * gradiBit;		//-45 gradi
		
		dICR_R[0] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
		dICR_R[1] = ((float) (L/2.0));
		dICR_R[2] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
		dICR_R[3] = ((float) sqrt(pow((L/2.0),2) + pow(D2,2)));
		dICR_R[4] = ((float) (L/2.0));
		dICR_R[5] = ((float) sqrt(pow((L/2.0),2) + pow(D1,2)));
		for(i=0; i<6; i++){
			ruote[i].distanza = ((float) (console_distanzaRuote/360.0)*(2.0 * pigreco * dICR_R[i]));
			if (ruote[i].distanza > massimaDistanza){
				massimaDistanza = ruote[i].distanza;
			}
		}
		for (i=0; i<6; i++){
			ruote[i].velocita = (float) (ruote[i].distanza * velocitaMovimento) / massimaDistanza;
		}	
	}
	
	else if (console_raggioRuote == 1 || console_raggioRuote == -1){
		ruote[0].angolo = (float) 90 * gradiBit;			//90 gradi
		ruote[2].angolo = (float) 90 * gradiBit;			//90 gradi
		ruote[3].angolo = (float) 90 * gradiBit;			//90 gradi
		ruote[5].angolo = (float) 90 * gradiBit;			//90 gradi
		for (i=0;i<6;i++){
			ruote[i].direzione = console_raggioRuote;
			ruote[i].velocita = velocitaMovimento;
			if (console_distanzaRuote == 0){
				ruote[i].distanza = 65535;
			}
			else{
				ruote[i].distanza = 10.0 * console_distanzaRuote;
			}
		}
	}
	else{
		ruote[0].angolo = (float)	((180.0 - (RADtoDEG * atan( ass(10.0 * console_raggioRuote + (L/2.0)) / D1))) * gradiBit);
		ruote[2].angolo = (float) ((RADtoDEG * atan( ass(10.0 * console_raggioRuote + (L/2.0)) / D2)) * gradiBit);
		ruote[3].angolo = (float) ((RADtoDEG * atan( ass(10.0 * console_raggioRuote - (L/2.0)) / D2)) * gradiBit);
		ruote[5].angolo = (float) ((180.0 - (RADtoDEG * atan( ass(10.0 * console_raggioRuote - (L/2.0)) / D1))) * gradiBit);
		
		dICR_R[0] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D1,2));
		dICR_R[1] = (float) ass(10.0 * console_raggioRuote + (L/2));
		dICR_R[2] = (float) sqrt(pow((10.0 * console_raggioRuote + (L/2.0)),2) + pow(D2,2));
		dICR_R[3] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D2,2));
		dICR_R[4] = (float) ass(10.0 * console_raggioRuote - (L/2));
		dICR_R[5] = (float) sqrt(pow((10.0 * console_raggioRuote - (L/2.0)),2) + pow(D1,2));
		

		for (i=0;i<6;i++){
			ruote[i].direzione = 1;
			if (console_distanzaRuote == 0){
				ruote[i].distanza = (float)  ass(65535.0 * dICR_R[i] / console_raggioRuote);
			}
			else{
				ruote[i].distanza = (float)  ass(console_distanzaRuote * dICR_R[i] / console_raggioRuote);
			}	
			if (ruote[i].distanza > massimaDistanza){
				massimaDistanza = ruote[i].distanza;
			}
		}
		NOP();
		NOP();
		NOP();
		for (i=0; i<6; i++){
			ruote[i].velocita = (float) ((ruote[i].distanza * velocitaMovimento) / massimaDistanza);
		}
	}
	
	NOP();
    		NOP();
    		NOP();
    		
	canTX(1,canTX_rot1, (int) ruote[0].angolo);
	canTX(1,canTX_rot3, (int) ruote[2].angolo);
	canTX(1,canTX_rot4, (int) ruote[3].angolo);
	canTX(1,canTX_rot6, (int) ruote[5].angolo);
	
	canTX(6,canTX_mov1, 0, (int) ruote[0].velocita & 0xFF, (int) ruote[0].velocita >> 8, (int) ruote[0].distanza & 0xFF, (int) ruote[0].distanza >> 8, ruote[0].direzione);
	canTX(6,canTX_mov2, 0, (int) ruote[1].velocita & 0xFF, (int) ruote[1].velocita >> 8, (int) ruote[1].distanza & 0xFF, (int) ruote[1].distanza >> 8, ruote[1].direzione);
	canTX(6,canTX_mov3, 0, (int) ruote[2].velocita & 0xFF, (int) ruote[2].velocita >> 8, (int) ruote[2].distanza & 0xFF, (int) ruote[2].distanza >> 8, ruote[2].direzione);
	canTX(6,canTX_mov4, 0, (int) ruote[3].velocita & 0xFF, (int) ruote[3].velocita >> 8, (int) ruote[3].distanza & 0xFF, (int) ruote[3].distanza >> 8, ruote[3].direzione);
	canTX(6,canTX_mov5, 0, (int) ruote[4].velocita & 0xFF, (int) ruote[4].velocita >> 8, (int) ruote[4].distanza & 0xFF, (int) ruote[4].distanza >> 8, ruote[4].direzione);
	canTX(6,canTX_mov6, 0, (int) ruote[5].velocita & 0xFF, (int) ruote[5].velocita >> 8, (int) ruote[5].distanza & 0xFF, (int) ruote[5].distanza >> 8, ruote[5].direzione);		
} 
