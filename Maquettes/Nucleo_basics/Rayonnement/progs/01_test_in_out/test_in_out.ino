/* Light Radiation Board / Test */

#define   USER_B    PC13

#define   LED_D1    PC7
#define   LED_D2    PB13
#define   SW1       PC6
#define   SW2       PC8

int val_sw1, val_sw2, val_ub;

void setup() {
  // put your setup code here, to run once:
  pinMode(LED_D1, OUTPUT);
  pinMode(LED_D2, OUTPUT);
  pinMode(SW2, INPUT_PULLUP);
  pinMode(SW1, INPUT_PULLUP);
  pinMode(USER_B, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(SW2), swInt, CHANGE);
  attachInterrupt(digitalPinToInterrupt(SW1), swInt, CHANGE);
  attachInterrupt(digitalPinToInterrupt(USER_B), swInt, CHANGE);

  digitalWrite(LED_D1, HIGH);
  digitalWrite(LED_D2, HIGH);

}

void loop() {
  // put your main code here, to run repeatedly:
  delay(100);
}

void swInt(void){
  val_sw1 = digitalRead(SW1);
  val_sw2 = digitalRead(SW2);
  val_ub = digitalRead(USER_B);
  digitalWrite(LED_D2, val_sw1 | val_sw2 | val_ub);
}
