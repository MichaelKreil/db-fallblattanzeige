// DB-Fallblattanzeige 
// 18.06.2016
//
// Authors: uk, coon

// Pins
const int PIN_RS485_nRE  = 2;  // PD2 (Receive Enable)
const int PIN_RS485_DE   = 3;  // PD3 (Send Enable)
const int PIN_SENSORS_IN = 5;  // PD5 
const int PIN_SR_LATCH   = 6;  // PD6
const int PIN_SR_CP      = 7;  // PD7
const int PIN_SR_DATA    = 8;  // PB0
const int PIN_MOTOR      = 9;  // PB1
const int PIN_IR_ROTARY  = A2; // PC2
const int PIN_IR_ORIGIN  = A3; // PC3

// constants
const int I2C_EEPROM_ADDR = 0x50; // A0, A1, A2 are all on ground.
const int ORIGIN_OFFSET = 0; // TODO: read from EEPROM later!

enum SensorPhase {
  ODD,
  EVEN
};

int _myId = 0;

void waitForRotaryQuarters(SensorPhase phase, int quarters) {
  for(int i = 0; i < quarters; i++) {
    if(phase == EVEN) {    
      while(!digitalRead(PIN_SENSORS_IN)); // wait for first high
      while(digitalRead(PIN_SENSORS_IN));  // wait for low
      while(!digitalRead(PIN_SENSORS_IN)); // wait for second high 
    }
    else {
      while(digitalRead(PIN_SENSORS_IN));  // wait for first low
      while(!digitalRead(PIN_SENSORS_IN)); // wait for high
      while(digitalRead(PIN_SENSORS_IN));  // wait for second low
    }
  }
}

void flipCards(SensorPhase phase, int numCards) {
  digitalWrite(PIN_IR_ROTARY, HIGH);
  digitalWrite(PIN_MOTOR, LOW);
  
  for(int i = 0; i < numCards; i++)
    waitForRotaryQuarters(phase, 1);
    
  digitalWrite(PIN_MOTOR, HIGH);
  digitalWrite(PIN_IR_ROTARY, LOW);
}

void spinToOrigin(SensorPhase phase) {
  digitalWrite(PIN_IR_ORIGIN, HIGH);
  digitalWrite(PIN_MOTOR, LOW);

  while(digitalRead(PIN_SENSORS_IN));  // skip first high value
  while(!digitalRead(PIN_SENSORS_IN)); // wait for home  
  while(digitalRead(PIN_SENSORS_IN));  // wait for end of home
  
  digitalWrite(PIN_IR_ORIGIN, LOW);
  
  flipCards(phase, ORIGIN_OFFSET); // flip some additional cards, if needed
  
  digitalWrite(PIN_MOTOR, HIGH);
}

byte getDeviceBusAddress() {
  digitalWrite(PIN_SR_LATCH, LOW);
  delay(20);
  digitalWrite(PIN_SR_LATCH, HIGH);

  int address = 0;
  for(int i = 7; i >= 0; i--) {
    digitalWrite(PIN_SR_CP, LOW);
    delay(20);
    address |= digitalRead(PIN_SR_DATA) << i;
    digitalWrite(PIN_SR_CP, HIGH);
    delay(20);
  }

  return address;
}

void busEnable(bool enable) {
  digitalWrite(PIN_RS485_DE, enable ? HIGH : LOW);
}

void setup() {  
  digitalWrite(PIN_MOTOR, HIGH);
  digitalWrite(PIN_IR_ORIGIN, LOW);
  digitalWrite(PIN_IR_ROTARY, LOW);
  digitalWrite(PIN_RS485_nRE, LOW);
  digitalWrite(PIN_RS485_DE, LOW);
  
  pinMode(PIN_SENSORS_IN, INPUT);
  pinMode(PIN_SR_LATCH,   OUTPUT);
  pinMode(PIN_SR_CP,      OUTPUT);
  pinMode(PIN_SR_DATA,    INPUT);
  pinMode(PIN_MOTOR,      OUTPUT);
  pinMode(PIN_IR_ORIGIN,  OUTPUT);
  pinMode(PIN_IR_ROTARY,  OUTPUT);
  pinMode(PIN_RS485_nRE,  OUTPUT);
  pinMode(PIN_RS485_DE,   OUTPUT);

  busEnable(false);

  Serial.begin(9600);

  _myId = getDeviceBusAddress();
  Serial.print("Address: ");
  Serial.println(String(_myId, DEC));
  
  spinToOrigin(EVEN); // assume initial even
}

void loop() {
  if (Serial.available() > 0) {
    int id = Serial.readStringUntil('/').toInt();
    int numCards = Serial.readStringUntil('/').toInt();
    String strPhase = Serial.readStringUntil('\n');

    SensorPhase phase;
    if(strPhase.equals("EVEN"))
      phase = EVEN;
    else
      phase = ODD;

    if(id == _myId) {
      if(numCards > 0)
        flipCards(phase, numCards);
      else
        spinToOrigin(phase);
    }  
  }
}

