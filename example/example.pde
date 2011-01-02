#include <Tap.h>

int button = 2;

void setup () {
  Serial.begin(9600);
  
  // setup the Button Tap library
  Tap tapper(button);
};

void loop() {
  // if the button is down, 
  if (tapper.isHit()) {
    Serial.println("Down");
  };
  
  // a delay is required for the timing to work correctly.
  // not entirely sure why this is the case,
  // maybe someone smarter than I could explain?
  delay(1);
};
