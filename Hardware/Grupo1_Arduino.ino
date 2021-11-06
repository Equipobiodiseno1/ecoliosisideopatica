
#include <SoftwareSerial.h> 
#define ANALOGLIPO 0
SoftwareSerial miBT(10, 11);  
int analogValor = 0; 
float voltaje = 0; 
char DATO = 0; 
int MOTOR1= 3;
int MOTOR2= 4;
int MOTOR3 = 5;
int MOTOR4 = 6;
int MOTOR5 = 7;
int MOTOR6 = 8;
void setup(){
  Serial.begin(9600);   
  Serial.println("Listo");  
  miBT.begin(38400);  
  pinMode(MOTOR1, OUTPUT);
  pinMode(MOTOR2, OUTPUT);
  pinMode(MOTOR3, OUTPUT);
  pinMode(MOTOR4, OUTPUT);
  pinMode(MOTOR5, OUTPUT);
  pinMode(MOTOR6, OUTPUT); 
}

void loop(){
analogValor = analogRead(ANALOGLIPO);
voltaje = 0.0048*analogValor; 
if (miBT.available()){       
   DATO = miBT.read();
   if(DATO == '2'){
    Serial.println((voltaje/10)*100);
   }
   if(DATO == '1'){
     digitalWrite(MOTOR1, !digitalRead(MOTOR1));
     digitalWrite(MOTOR2, !digitalRead(MOTOR2));
     digitalWrite(MOTOR3, !digitalRead(MOTOR3));
     digitalWrite(MOTOR4, !digitalRead(MOTOR4));
     digitalWrite(MOTOR5, !digitalRead(MOTOR5));
     digitalWrite(MOTOR6, !digitalRead(MOTOR6));
   }
   
}
delay(2000);
}
