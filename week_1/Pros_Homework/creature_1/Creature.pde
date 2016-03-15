class Creature{
  
 //variables
 float size;
 float xPos, yPos;
 float xSpeed, ySpeed;
 color fur;
  float r,g,b,a;
 //constructor
 
 
 
 
 
 Creature(){
  size = random(.5);
  xPos = random(width);
  //xPos = mouseX;
  yPos = random(height);
  //xSpeed= random(-2,2);
  //ySpeed= random(-2,2);
  //fur = color(random(255),random(255),255,random(87));
 fur = color(r,g,b,a);
 
 }
 



 void giveBirth(){
 //xPos = mouseX;
 //yPos = mouseY;
     xPos = random(width);
  //xPos = mouseX;
  yPos = random(height);
 
  r = random(0,255);
 g = random(200,255);
 b = random(200,255);
 a = random(100);
 }
 
 
 
 void update(){
   
 //r = random(0,255);
 //g = random(240,255);
 //b = random(240,255);
 //a = random(200);
 
     
   size = size + random(-.055,.05);
    //strokeWeight(3);
    noStroke();
      xSpeed= random(-3,3);
  ySpeed= random(-2,2);
    //  stroke(0);
    fill(fur);
   
    ellipse(xPos, yPos, random(size*50),random(size*50));
    fill(255);
    //fill(240,100,100,100);
    ellipse(xPos -(size*4), yPos-(size*2), (size*10) + random(-8,8), (size*10) + random(-8,8));
    fill(0);
    ellipse(xPos-(size*5), yPos-(size+size*0.5), size*5, size*5);
    line(xPos-(size*16), yPos+(size*10), xPos+(size*11), yPos + (size*10));
  
  //r 
  //g
  //b
  //a
 
  
  
  if(mousePressed){
   fur = color(r,g,b,a);
    r = random(0,255);
 g = random(0,255);
 b = random(0,255);
 a = random(255);
 
 
}
  
  
  
   xPos += xSpeed*4;
   yPos += ySpeed*4;
   
   xPos = xPos *.99 + mouseX *(.01);
   yPos = yPos *.95 + mouseY *(.05 + random(-.02,.02));
   
   
 }
}