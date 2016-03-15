  int numFriends;

Creature[] friends;

boolean back = true;

import spacebrew.*;

String server="sandbox.spacebrew.cc";
String name="Zanzie";
String description ="Client that sends and receives range messages. Range values go from 0 to 1023.";
Spacebrew sb;

boolean value = false;
int local_slider_val = 512;
int remote_slider_val = width;

void setup() {
  size(1600, 800);
  // instantiate the spacebrewConnection variable
  sb = new Spacebrew( this );


  // declare your subscribers
  sb.addSubscribe( "remote_slider", "range" );
  sb.addSubscribe( "change_background", "boolean" );

  // connect!
  sb.connect(server, name, description );


  numFriends = 10;
  friends = new Creature[numFriends]; 

  for ( int i=0; i<numFriends; i++) {

    friends[i] = new Creature();
  }
}


void draw() {
  // print(value);

  frameRate(random(10, 45));

  for ( int i=0; i<numFriends; i++) {
    if (value == true) {
      friends[i].giveBirth();
    }
    friends[i].update();
  }

  if (back == true) {

    fill(random(255), random(255), random(255), random(60));
    rect(random(width), random(height), random(1500), random(10));
    fill(random(255), random(255), random(255), random(80));
    rect(random(width), random(height), random(40), random(40));
  }
}

void onRangeMessage( String name, int value ) {
  //println("got range message " + name + " : " + value);
  remote_slider_val = value;
}

void onBooleanMessage( String name, boolean value ) {
  // println("got bool message " + name + " : " + value); 

  // update background color;
  if (value == true) {
    back = !back;
    println("true");
  } else {
    //fill(255, 255, 255, 15);
    //rect(0, 0, width, height);
    println("false");
  }
}