
int numFriends; // sets number of objects

People[] friends; //creates class people


void setup(){    // initial code
  size(1800,600); // sets size of screen 
  numFriends = 50; // sets number
  
  friends = new People[numFriends]; 
  
         //forloop to create all objects
        for ( int i=0; i<numFriends; i++){  
            friends[i] = new People();  // calls new object
        } 
        
    }   
    

void draw(){  // loop through

  frameRate(random(14,45)); // better Framerate: changes every frame
  
  //forllop to call function click to update when mouse pressed
   for ( int i=0; i<numFriends; i++){
       if(mousePressed){
            friends[i].click(); //call function click
       }
          friends[i].update();
      }
     
     
     //background noise
     
fill(random(255),random(255),random(255),random(60));
rect(random(width),random(height),random(1500),random(10));
fill(random(255),random(255),random(255),random(80));
rect(random(width),random(height),random(40),random(40));
        
        
        
        
        
    }
    