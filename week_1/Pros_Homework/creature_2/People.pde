class People{
  
 //variables
 float size;  // sets overall size
 float xPos, yPos;   //sets overall position
 float xSpeed, ySpeed;    // sets speed in x and y
 color c1;//  initulizes color 1
 color c2;//  initulizes color 2
 float r1,g1,b1,a1; // var for color 1
 float r2,g2,b2,a2; // var for color 2
    float startSpreadX;
    float startSpreadY;
 
 //constructor
 
 
 People(){

  size =  random(.5);
   //size = 10;         // sets initial overall size
   xPos =  random(width);     // sets initial x position
   yPos =  random(height);    // sets initial y position
   //xSpeed= random(-3,3);     // initial speed
   //ySpeed= random(-3,3);     // initial speed
 
    c1 = color(r1,g1,b1,a1);// initial color of c1
    c2 = color(r2,g2,b2,a2);
   
 
 }

 
 
 
 // ON MOUSE CLICK
 
 void click(){
 //xPos = mouseX;  // if you want to follow mouse
 //yPos = mouseY;
 

 
 
 
  //xPos = random(width);
  //yPos = random(height);
 
 //r1 = random(255);
 //g1 = 255;
 //b1 = 0;
 //a1 = 255;
 
 //r2 = 0;
 //g2 = 255;
 //b2 = 0;
 //a2 = 255;
 }
 
 
 
 void update(){
   size = size + random(-.055,.05);
 r1 = r1 + random(-5.5);
 g1 = g1 + random(-5.5);
 b1 = b1+ random(-5.5);
 a1 =  a1+ random(-5.5);
 
 
 r2 =  r2 + random(-5.5);
 g2 =  g2 + random(-5.5);
 b2 =  b2 + random(-5.5);
 a2 =  a2 + random(-5.5);
startSpreadX = random(-mouseX,mouseY);
startSpreadY = random(-mouseX,mouseX);
  
  
   noStroke();
   
  //xSpeed= 10;
  //ySpeed= 10;
   
   

   
   
   //fill(c2);
  //// fill(255,255,0);
   //ellipse(xPos, yPos, size*10, size*10);

   //  fill(c1);
   //ellipse(xPos, yPos, size, size*20);
   //   ellipse(xPos, yPos, random(size*50),random(size*50));
   // fill(c2);
   // //fill(240,100,100,100);
   // ellipse(xPos -(size*4), yPos-(size*2), (size*10) + random(-8,8), (size*10) + random(-8,8));
   // fill(0,0,0,20);
   // ellipse(xPos-(size*5), yPos-(size+size*0.5), size*5, size*5);
  
  
      fill(c1);
   
    ellipse(xPos, yPos, random(size*50),random(size*50));
    fill(2555,255,255,a1);
    //fill(240,100,100,100);
    ellipse(xPos -(size*4), yPos-(size*2), (size*10) + random(-8,8), (size*10) + random(-8,8));
    fill(c2);
    ellipse(xPos-(size*5), yPos-(size+size*0.5), size*5, size*5);
    
    //stroke(255);
    line(xPos-(size*16), yPos+(size*10), xPos+(size*11), yPos + (size*10));
  
  
  
  if(mousePressed){
   c1 = color(r1,g1,b1,a1);
   r1 = random(0,255);
   g1 = random(240,255);
   b1 = random(240,255);
   a1 = random(30);
    c2 = color(r2,g2,b2,a2);
   r2 = random(0,255);
   g2 = random(0,255);
   b2 = random(240,255);
   a2 = random(30);
 
    //xPos = mouseX + startSpreadX;
    //yPos = mouseY + startSpreadY;
 
 
    //xPos = xPos *.98 + mouseX *(.02);
   //yPos = yPos *.98 + mouseY *(.02);
 
 
    //xPos = xPos *.99 + mouseX * .01;
    //yPos = yPos *.99 + mouseY * .01;
    
   xPos += xSpeed*4;
   yPos += ySpeed*4;
   
   xPos = xPos *.99 + mouseX *(.01);
   yPos = yPos *.95 + mouseY *(.05 + random(-.02,.02));
 
 
} else {
  
  
  
  
  
   xPos += xSpeed + random(-2,2);
   yPos += ySpeed + random(-2,2);

}
 }
}