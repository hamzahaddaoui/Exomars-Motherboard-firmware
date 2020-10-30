const float pigreco=3.1415926535897;
const float gradiBit=(255.0/180.0);		//conversione da gradi a valore in bit (0-255)
const float RADtoDEG=(180.0/pigreco);	//Conversione da radianti a gradi
#define ass(x) ((x) > 0 ? (x) : -(x)) 
const float maxVel = 100.0;			//velocità massima mm/s
const float L = 400.0;				//Larghezza tra le due file di ruote			(mm)
const float D1 = 200.0;				//Distanza tra le ruote centrali e le anteriori (mm)
const float D2 = 200.0;				//Distanza tra le ruote centrale e le posteriori(mm)

/* PROGETTO SCHEDA MASTER EXOMARS
autore: Hamza Haddaoui
descrizione: Il software gestisce la comunicazione tra il terminale dell'utente, e
le varie periferiche collegate.
- RUOTE (x6)
- TRAPANO
- CASSETTO
- TELECAMERA

I dati ricevuti dalla console sono:
-1 byte raggio di rotazione :( distanza icr- centro_veicolo)
	SE -2 Ruota su se stesso sx
	SE -1 ruota su se stesso dx
	SE 0 ferma tutto
	SE 1 va dritto
	SE 2 va indietro
	SE DA -128 a -3 Sx  	(cm)
	   DA 3 a 127 Dx	(cm)

-1 byte distanza  :
	8 bit(risoluzione 1 cm, se 0 vado avanti di continuo)

-1 byte velocità:
	proporzionale da 1 a 254 (0 fermo , 255 massima potenza)

-3 byte trapano:
		1 byte  Posizione (0 a riposo ,1 a lavoro,2 cassetto)
		1 byte  Punta (1 abbassa, 0 alza)
		1 byte  Rotazione (0 OFF - 1 ON) 

3 byte telecamera :
       1 byte su/giu (-60° 40°)
       1 byte destra/sinistra (-90° 90°)
----------------------------------------------------------------------------------------     
       
       
i dati da inviare alle singole perifiche:
-RUOTE    (X6)
      -VELOCITA' (1 int)
      -DISTANZA (1 int)
      -ANGOLO (1 byte) *SOLO PER RUOTE ANTERIORI E POSTERIORI*
      -DIREZIONE (1 byte)

-TELECAMERA
      -INCLINAZIONE ASSE X (1 byte)
      -INCLINAZIONE ASSE Y (1 byte)

-CASSETTO (1 byte)
      -APERTO/CHIUSO (1 - OPEN / 0 - CLOSE)
      
-TRAPANO (1 byte)
      -ON-OFF /POSIZIONETRAPANO/POSIZIONEPUNTA/ROTAZIONEPUNTA
*/
//ERRORI CAN---------------------------------------------------------
#define canERROR_mov1 			0x01
#define canERROR_mov2 			0x02
#define canERROR_mov3 			0x03
#define canERROR_mov4 			0x04
#define canERROR_mov5 			0x05
#define canERROR_mov6 			0x06
#define canERROR_rot1 			0x07
#define canERROR_rot3 			0x08
#define canERROR_rot4 			0x09
#define canERROR_rot6 			0x0A
#define canERROR_trapano 		0x0B
#define canERROR_camera		 	0x0C
#define canERROR_sensori 		0x0D
#define canERROR_alimentazione 	0x0E
#define canERROR_cassetto 		0x0F

//INVIO CAN----------------------------------------------------------
#define canTX_ruote				0x20
#define canTX_mov1				0x21
#define canTX_mov2				0x22
#define canTX_mov3				0x23
#define canTX_mov4				0x24
#define canTX_mov5				0x25
#define canTX_mov6				0x26
#define canTX_rot1				0x27
#define canTX_rot3				0x28
#define canTX_rot4				0x29
#define canTX_rot6				0x2A
#define canTX_trapano			0x2B
#define canTX_camera			0x2C
#define canTX_sensori			0x2D
#define canTX_alimentazione		0x2E
#define canTX_cassetto			0x2F
#define canTX_tutto				0x30


//RICEZIONE CAN------------------------------------------------------
#define canRX_mov1				0x41
#define canRX_mov2				0x42
#define canRX_mov3				0x43
#define canRX_mov4				0x44
#define canRX_mov5				0x45
#define canRX_mov6				0x46
#define canRX_rot1				0x47
#define canRX_rot3				0x48
#define canRX_rot4				0x49
#define canRX_rot6				0x4A
#define canRX_trapano			0x4B
#define canRX_camera			0x4C
#define canRX_sensori			0x4D
#define canRX_alimentazione		0x4E
#define canRX_cassetto			0x4F

//ROUTINE------------------------------------------------------------------------------------
void ruoteRoutine(void);  //routine per calcolo dati ruote
void cameraRoutine(void);  //routine per calcolo dati telecamera
void trapanoRoutine(void);  //routine per calcolo dati trapano

void picSetup(void);

void canSetup(void);
void canConfigMode(void);
void canNormalMode(void);
void canLoopbackMode(void);
void canTX(int nData, ...);	/*routine invio dati CAN
							* ARGOMENTO 1  -  Lunghezza dato (0-8 byte)
							* ARGOMENTO 2  -  Indrizzo al quale inviare dati
							* ARGOMENTI 3 fino a 10  -  I byte da inviare
							*/
void canRX(void);			//routine ricezione dati CAN

void bluetoothSetup();
void bluetoothTX(char dataType, char TXdato1, char TXdato2, char TXdato3);
void bluetoothRX(void);
//-------------------------------------------------------------------------------------------



// 15 elementi online ----------------------------------------------
bit mov1_online;
bit mov2_online;
bit mov3_online;
bit mov4_online;
bit mov5_online;
bit mov6_online;

bit rot1_online;
bit rot3_online;
bit rot4_online;
bit rot6_online;

bit trapano_online;

bit camera_online;

bit sensori_online;

bit alimentazione_online;

bit cassetto_online;
//--------------------------------------------------------------

//VARIABILI BOOL----------------------------------------------------------------------------
bit ruoteData_NEW;                         //verifica la disponibilità di un nuovo dato Ruote
bit cameraData_NEW;                       	//verifica la disponibilità di un nuovo dato Camera
bit trapanoData_NEW;                      	//verifica la disponibilità di un nuovo dato Trapano
bit serialData_NEW; 						//verifica la disponibilità di un nuovo dato Bluetooth

bit posizioneMov1;							//distanza richiesta raggiunta da ruota 1
bit posizioneMov2;							//distanza richiesta raggiunta da ruota 2
bit posizioneMov3;							//distanza richiesta raggiunta da ruota 3
bit posizioneMov4;							//distanza richiesta raggiunta da ruota 4
bit posizioneMov5;							//distanza richiesta raggiunta da ruota 5
bit posizioneMov6;							//distanza richiesta raggiunta da ruota 6

bit posizioneRot1;							//angolo richiesto raggiunto da ruota 1
bit posizioneRot3;							//angolo richiesto raggiunto da ruota 3
bit posizioneRot4;							//angolo richiesto raggiunto da ruota 4
bit posizioneRot6;							//angolo richiesto raggiunto da ruota 6

bit posizioneCameraX;						//angolo richiesto raggiunto da asse X camera
bit posizioneCameraY;						//angolo richiesto raggiunto da asse Y camera

bit posizioneTrapano;						//posizione richiesta raggiunta 

bit posizioneCassetto;						//posizione richiesta raggiunta

//-------------------------------------------------------------------------------------------

//VARIABILI GENERICHE-----------------------------------------------------------------------
char i;
char k; //UTILIZZATA DA Bluetooth.c
//------------------------------------------------------------------------------------------

//DATI RICEVUTI DA CONSOLE-------------------------------------------------------------------
char bufferDataRX[19];		//BUFFER DATI INIZIALE

int console_raggioRuote;
int console_distanzaRuote;
int console_velocitaRuote;

char console_rotazioneCamera;
char console_inclinazioneCamera;

char console_posizioneTrapano;
char console_puntaTrapano;
char console_rotazioneTrapano;			//rotazione punta trapano

char console_cassetto;
//-------------------------------------------------------------------------------------------

//DATI RICEVUTI DA PERIFERICHE (read only)----------------------------------------------------
struct ricezRuote{
	unsigned int velocitaAttuale;
	unsigned int distanzaAttuale;
	unsigned int pwmAttuale;
 	char angoloAttuale;
} periferiche_Ruote[6];

char periferiche_CameraXY[2];			//angolo attuale
char periferiche_Trapano;			//stessa roba che mando
char periferiche_Cassetto;			//1- aperto, 0- chiuso
char periferiche_statoBatterie;

//-------------------------------------------------------------------------------------------

//DATI INVIATI ALLE PERIFERICHE--------------------------------------------------------------
struct invioRuote{
	double velocita;
	double distanza;
	char direzione;
	double angolo;
} ruote[6];

char cameraXY[2];
char trapano;
char cassetto;
//-------------------------------------------------------------------------------------------

