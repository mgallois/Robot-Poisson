/*************************************************************
Motor Shield 1-Channel DC Motor Demo
by Randy Sarafan

For more information see:
https://www.instructables.com/id/Arduino-Motor-Shield-Tutorial/

*************************************************************/
float f;
float Dt;
int I;
int P;

void setup() {
  
  //Setup Channel A
  pinMode(12, OUTPUT); //Initiates Motor Channel A pin
  pinMode(9, OUTPUT); //Initiates Brake Channel A pin
  f=1; //f en Hz
  Dt=1000/(2*f); // demi-prériode en miliseconde
  //I=;
  //P=map(I,0,Imax,0,255);
  P=100;
  Serial.begin(9600);
  
}

void loop(){
  
  //forward @ 
  digitalWrite(12, HIGH); //Establishes forward direction of Channel A
  digitalWrite(9, LOW);   //Disengage the Brake for Channel A
  analogWrite(3, P);   //p entre 0 et 255
  delay(Dt);
  
  //digitalWrite(9, HIGH); //Eengage the Brake for Channel A

  //delay(1000);
  
  //backward @ 
  digitalWrite(12, LOW); //Establishes backward direction of Channel A
  digitalWrite(9, LOW);   //Disengage the Brake for Channel A
  analogWrite(3, P);   //Spins the motor on Channel A 
  
  delay(Dt);
  
  //digitalWrite(9, HIGH); //Eengage the Brake for Channel A
  
  //delay(1000);
  
}
