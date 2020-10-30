void bluetoothSetup(){
	SPBRGH=0;				  
	BRG16=0;
	SPBRG=12;				// bd=9600
	SPEN=1;
	BRGH=0;
	TXSTA=0b00000010;       // 8-bit,asicrono,high speed,TSR vuoto
	RCSTA=0b10010000;			
	TXEN=1;
	RCIE=1;            		// abilitato interrupt di RX
}

void bluetoothTX(char dataType, char TXdato1, char TXdato2, char TXdato3){
	char invio_dati[19];
	char TX_CRC=0;
	char j;
	sprintf(invio_dati,"@%c %3d %3d %3d $", dataType, TXdato1, TXdato2, TXdato3);	// crea la stringa base per il calcolo del CRC 
  	for(j=0;j<16;j++){
		TX_CRC+=invio_dati[i];
	}
	sprintf(invio_dati,"@%c %3d %3d %3d %3d$", dataType, TXdato1, TXdato2, TXdato3, TX_CRC);		// aggiungo il CRC alla stringa			
	for(j=0;j<19;j++){
  		TXREG=invio_dati[i];   	// invio dati
  	    while (!TXIF);
  	}
}

void bluetoothRX(void){
	char RXdato1, RXdato2, RXdato3;
	char RX_CRC, GEN_CRC;
	char n = 100;
	TXREG='R';   	// invio dati
  	while (!TXIF);
  	TXREG='X';   	// invio dati
  	while (!TXIF);
	//CRC
	/*
	for (i=0; i<=18; i++){
		if (k<15 || k==18){
			GEN_CRC+=bufferDataRX[k];
		}	
		if (k>=15 && k<=17){
			RX_CRC += (bufferDataRX[k] - 48) * n;
			n/=10;
		}
	}
	if ((RX_CRC - GEN_CRC) == 0) errore = 0;
	else errore = 1;*/
	
	//elaborazione dati
	RXdato1 = (bufferDataRX[3]-48) * 100 + (bufferDataRX[4]-48) * 10 + (bufferDataRX[5]-48);
	RXdato2 = (bufferDataRX[7]-48) * 100 + (bufferDataRX[8]-48) * 10 + (bufferDataRX[9]-48);
	RXdato3 = (bufferDataRX[11]-48) * 100 + (bufferDataRX[12]-48) * 10 + (bufferDataRX[13]-48);
	switch(bufferDataRX[1]){
		case 'R':
			ruoteData_NEW = 1;
			console_raggioRuote = RXdato1;
			console_distanzaRuote = RXdato2;
			console_velocitaRuote = RXdato3;
			break;
		case 'C':
			cameraData_NEW = 1;
			console_rotazioneCamera = RXdato1;
			console_inclinazioneCamera = RXdato2;
			break;
		case 'S':
			break;
		case 'T':
			trapanoData_NEW = 1;
			if (RXdato1 == 2) {
				console_cassetto = 1;
			}
			else{
				console_cassetto = 0;
			}
			console_posizioneTrapano = RXdato1;
			console_puntaTrapano = RXdato2;
			console_rotazioneTrapano = RXdato3;
			break;
		default:
			break;
	}
	
	k=0;
	bufferDataRX[0] = 0;
	bufferDataRX[18] = 0;
}
