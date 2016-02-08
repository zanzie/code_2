int numFriends;

Creature[] friends;



void setup(){
size(1800,600);
 numFriends = 20;
friends = new Creature[numFriends]; 

for ( int i=0; i<numFriends; i++){

friends[i] = new Creature();
}
 
  
}


void draw(){
  
  frameRate(random(10,45));
  
 for ( int i=0; i<numFriends; i++){
if(mousePressed){
  friends[i].giveBirth();
}
 friends[i].update();
  
 }
 fill(random(255),random(255),random(255),random(60));
rect(random(width),random(height),random(1500),random(10));
 fill(random(255),random(255),random(255),random(80));
rect(random(width),random(height),random(40),random(40));

}