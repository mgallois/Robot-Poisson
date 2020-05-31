int pinPot=0; //variable pour définir le CAN où est connecté le potentiomètre
int valPot=0; //variable pour récupérer la tension aux bornes du potentiomètre traduite par le CAN . On l’initialise à 0.
void setup() {
  Serial.begin(9600); //Initialisation de la communication avec la console
}

void loop() {
  valPot=analogRead(A0); //lit la tension, la convertit en valeur numérique et la stocke dans valeurPot
  Serial.print("Valeur lue : ");
  Serial.println(valPot);
  delay(100);
}
