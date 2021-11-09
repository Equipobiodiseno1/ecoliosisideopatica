
#include <SoftwareSerial.h> 
#define ANALOGLIPO 0
SoftwareSerial miBT(10, 11);  
int analogValor = 0; 
float voltaje = 0; 
char DATO = 0; 
#define PWM1 3;
#define PWM2 4;
#define PWM3 5;
#define PWM4 6;
#define PWM5 7;
#define PWM6 8;
int FRECUENCIA;
void setup(){
  Serial.begin(9600);   
  Serial.println("Listo");  
  miBT.begin(38400);  
  pinMode(PWM1, OUTPUT);
  pinMode(PWM2, OUTPUT);
  pinMode(PWM3, OUTPUT);
  pinMode(PWM4, OUTPUT);
  pinMode(PWM5, OUTPUT);
  pinMode(PWM6, OUTPUT); 
}

void loop(){
analogValor = analogRead(ANALOGLIPO);
voltaje = 0.0048*analogValor; 
for (FRECUENCIA = 0; FRECUENCIA < 181; FRECUENCIA++){
     analogWrite(PWM1, FRECUENCIA);
     analogWrite(PWM2, FRECUENCIA);
     analogWrite(PWM3, FRECUENCIA);
     analogWrite(PWM4, FRECUENCIA);
     analogWrite(PWM5, FRECUENCIA);
     analogWrite(PWM6, FRECUENCIA);
     delay(25);
    }
for (FRECUENCIA = 180; FRECUENCIA >= 0; FRECUENCIA--){
     analogWrite(PWM1, FRECUENCIA);
     analogWrite(PWM2, FRECUENCIA);
     analogWrite(PWM3, FRECUENCIA);
     analogWrite(PWM4, FRECUENCIA);
     analogWrite(PWM5, FRECUENCIA);
     analogWrite(PWM6, FRECUENCIA);
     delay(25);
    }
if (miBT.available()){       
   DATO = miBT.read();
   if(DATO == '2'){
    Serial.println((voltaje/10)*100);
   }
   else if(DATO == '1'){
     analogWrite(PWM1, !analogRead(PWM1));
     analogWrite(PWM2, !analogRead(PWM2));
     analogWrite(PWM3, !analogRead(PWM3));
     analogWrite(PWM4, !analogRead(PWM4));
     analogWrite(PWM5, !analogRead(PWM5));
     analogWrite(PWM6, !analogRead(PWM6));
   }
   
}
delay(2000);
}
