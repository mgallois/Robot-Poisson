int P;
boolean contact;
int lecture;

  unsigned long tempsDebut;
  unsigned long tempsFin;


void setup() {
  //Setup Channel A
  pinMode(12, OUTPUT); //Initiates Motor Channel A pin
  pinMode(9, OUTPUT); //Initiates Brake Channel A pin

  P=50;// P entre 0 et 255
  contact=false;

  lecture = 2;
  pinMode(lecture,INPUT_PULLUP);
  Serial.begin(9600);

  // Mise en position initial
  digitalWrite(12, LOW); //Establishes backward direction of Channel A
  digitalWrite(9, LOW);   //Disengage the Brake for Channel A
  analogWrite(3, P);   //Spins the motor on Channel A 
  delay(1000);

  contact=not(digitalRead(lecture));

  delay(1000);
  tempsDebut = millis();

  
}

void loop() {

  if (contact){
    digitalWrite(12, HIGH); //Establishes forward direction of Channel A
    digitalWrite(9, LOW);   //Disengage the Brake for Channel A
    analogWrite(3, P);   //p entre 0 et 255
  }
  else{
    tempsFin=millis();
    Serial.println(tempsFin-tempsDebut);
  }
  contact=not(digitalRead(lecture));
}
