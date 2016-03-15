//
//  Branch.cpp
//  treeee
//
//  Created by Zanzie on 3/7/16.
//
//

#include "Guy.h"
void Guy::setup(
                   float _xPos,
                   float _yPos,
                   float _xSpeed,
                   float _ySpeed,
                   float _size,
                   float _breakChance,
                   float _maxBreak,
                   float _countDown,
                   float _angle,
                   ofColor _color
                   ){
    
    
    
    
    
    xPos = _xPos;
    yPos = _yPos;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;
    size = _size;
    breakChance = _breakChance;
    maxBreak = _maxBreak;
    countDown = _countDown;
    angle = _angle;
    color = _color;
    
    
    
    //2 check if split
    
    float r = ofRandomuf(); // random # btwn 0 and 1
    if(r > breakChance && countDown !=
       200
       ){
        shoot = true;
    } else {
        shoot = false;
        
    }
    
    // draw guy
    
    ofSetColor(color);

    ofDrawRectangle(xPos, yPos, size,size);
    
    
    //update var
    
    xPos += xSpeed*cos(angle);
    yPos += ySpeed*sin(angle);
    size -= size/5;
    angle += ofRandom(-1,1);
    countDown++;
    
    //recursion
    
    
    
    if(countDown <= 200){
        if(!shoot){
            Guy subGuy;
            subGuy.setup(xPos, yPos, ySpeed, xSpeed, size, breakChance, maxBreak, countDown, angle, color);
            
            
           
        } else {
            
            
            Guy subGuy1;
            float angle1 = angle + ofRandom(0,360);
            subGuy1.setup(xPos, yPos, ySpeed, xSpeed, size, breakChance, maxBreak, countDown, angle1, color);
            
            
            Guy subGuy2;
            float angle2 = angle - ofRandom(0, 360);
            subGuy2.setup(xPos, yPos, ySpeed, xSpeed, size, breakChance, maxBreak, countDown, angle2, color);
            
            
      
        }
    }
    
    
    
    
}

