// DB-Fallblattanzeige 
// 21.01.2016
//
// Authors: uk, coon

#include <Wire.h>

// Pins
const int PIN_SENSORS_IN = 5;  // PD5
const int PIN_SR_LATCH   = 6;  // PD6
const int PIN_SR_CP      = 7;  // PD7
const int PIN_SR_DATA    = 8;  // PB0
const int PIN_MOTOR      = 9;  // PB1
const int PIN_IR_ROTARY  = A2; // PC2
const int PIN_IR_ORIGIN  = A3; // PC3

// constants
const int I2C_EEPROM_ADDR = 0x50; // A0, A1, A2 are all on ground.
const int ORIGIN_OFFSET = 5; // TODO: read from EEPROM later

void waitForRotaryQuarters(int quarters) {
  for(int i = 0; i < quarters; i++) {
    while(!digitalRead(PIN_SENSORS_IN)); // wait for first high
    while(digitalRead(PIN_SENSORS_IN));  // wait for low
    while(!digitalRead(PIN_SENSORS_IN)); // wait for second high
  }
}

void flipCards(int numCards) {
  digitalWrite(PIN_IR_ROTARY, HIGH);
  digitalWrite(PIN_MOTOR, LOW);
  
  for(int i = 0; i < numCards; i++)
    waitForRotaryQuarters(1);
    
  digitalWrite(PIN_MOTOR, HIGH);
  digitalWrite(PIN_IR_ROTARY, LOW);
}

void spinToOrigin() {
  digitalWrite(PIN_IR_ORIGIN, HIGH);
  digitalWrite(PIN_MOTOR, LOW);

  while(digitalRead(PIN_SENSORS_IN));  // skip first high value
  while(!digitalRead(PIN_SENSORS_IN)); // wait for home  
  while(digitalRead(PIN_SENSORS_IN));  // wait for end of home
  
  digitalWrite(PIN_IR_ORIGIN, LOW);
  
  flipCards(ORIGIN_OFFSET); // flip some additional cards, if needed
  
  digitalWrite(PIN_MOTOR, HIGH);
}

void initI2cEeprom() {
  Wire.setClock(0); // set to lowest possible speed

  Wire.beginTransmission(I2C_EEPROM_ADDR); // Chosen base address
  Wire.write(0); // send MSB of the address
  Wire.write(0); // send LSB of the address
  
  if(byte error = Wire.endTransmission())
    Serial.println("I2C-EEPROM did not respond!");
  else {
    delay(100);
    Wire.requestFrom(I2C_EEPROM_ADDR, 20);

    Serial.println("Waiting for data from EEPROM...");
    while(!Wire.available());

    Serial.print("Data: ");

    for(int i = 0; i < 20; i++) {
      if(i % 15 == 0)
        Serial.println("");
    
      byte b = Wire.read();
      Serial.print("0x");
      Serial.print(String(b, HEX));
      Serial.print(" ");
    }
  }
}

void setup() {
  digitalWrite(PIN_MOTOR, HIGH);
  digitalWrite(PIN_IR_ORIGIN, LOW);
  digitalWrite(PIN_IR_ROTARY, LOW);
  
  pinMode(PIN_SENSORS_IN, INPUT);
  pinMode(PIN_SR_LATCH,   OUTPUT);
  pinMode(PIN_SR_CP,      OUTPUT);
  pinMode(PIN_SR_DATA,    INPUT);
  pinMode(PIN_MOTOR,      OUTPUT);
  pinMode(PIN_IR_ORIGIN,  OUTPUT);
  pinMode(PIN_IR_ROTARY,  OUTPUT);
  
  Serial.begin(9600);

  initI2cEeprom();
  spinToOrigin();
}

void loop() {
  if (Serial.available() > 0) {
    int numCards = Serial.parseInt();
    if(numCards > 0)
      flipCards(numCards);
    else
      spinToOrigin();
  }
}

