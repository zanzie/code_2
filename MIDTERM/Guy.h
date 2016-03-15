//
//  Guy.h
//  midterm
//
//  Created by Zanzie on 3/13/16.
//
//

#ifndef __midterm__Guy__
#define __midterm__Guy__

#include <stdio.h>
#include "ofMain.h"
#include "brah.h"


#endif /* defined(__midterm__Guy__) */



class Guy : public ofBaseApp{
    public:
    
    void setup(
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
               
               );
    
    
    
private:
    float xPos;
    float yPos;
    float xSpeed;
    float ySpeed;
    float size;
    float breakChance;
    float maxBreak;
    float countDown;
    float angle;
    ofColor color;
    
    bool shoot;
    
    
};