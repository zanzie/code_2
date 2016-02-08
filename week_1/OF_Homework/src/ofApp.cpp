#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
   // ofBackground(0);
    ofSetBackgroundAuto(false);
    
}

//--------------------------------------------------------------
void ofApp::update(){
    ofSetFrameRate(ofRandom(10,45));

}

//--------------------------------------------------------------
void ofApp::draw(){

   // ofSetColor(255, 255, 255);
   
   // ofDrawEllipse(20, 20, 20, 20);
    
    ofPoint center;
    
// WHY DOESN'T this work????
//     center.x =   center.x * .97 + ofGetMouseX() *(.03);
//     center.y =  center.y * .97 + ofGetMouseY() *(.03);
    
    
    
    center.x = mouseX;
    center.y = mouseY;
    
    float length = ofRandom(10,25);
    float  width = ofRandom(10,25);
    
    
    
    guy1(center,length,width);
    
    
    
    
}

//--------------------------------------------------------------

void ofApp::guy1(ofPoint center, float length, float width){
   ofSetColor(ofRandom(200,255),ofRandom(200,255),ofRandom(200,255),ofRandom(10,200));
   
    // Monser dude
    
    ofDrawEllipse(center, width, length);
    
    ofSetColor(0,ofRandom(200,255),ofRandom(200,255),ofRandom(0,30));
    
    ofDrawEllipse(center +ofRandom(-10, 30), width*4, length);
    

    
    ofSetColor(0,ofRandom(10,55),ofRandom(200,255),ofRandom(0,30));
    
    ofDrawEllipse(center  - ofRandom(-10, 30), width*4, length);
    
    ofSetColor(0,ofRandom(200,255),ofRandom(200,255),ofRandom(0,30));
    
    ofDrawEllipse(center  - ofRandom(-40, 30), width*4, length*3);
    
     ofSetColor(0,0,0,ofRandom(0,200));
    
    ofDrawRectangle(center.x + ofRandom(-80,80), center.y + ofRandom(-80,80) , ofRandom(width/2), ofRandom(length/2));
    
    
    
    //background noise
    ofSetColor(255,255,255,ofRandom(100));
    ofDrawRectangle(ofRandom(ofGetWidth()),ofRandom(ofGetHeight()),ofRandom(20),ofRandom(20));

    ofSetColor(255,255,255,ofRandom(100));
    ofDrawRectangle(ofRandom(ofGetWidth()),ofRandom(ofGetHeight()),ofRandom(20),ofRandom(20));
    
    ofSetColor(255,255,255,ofRandom(100));
    ofDrawRectangle(ofRandom(ofGetWidth()),ofRandom(ofGetHeight()),ofRandom(20),ofRandom(20));
    
    
   

    
}



//----------------------------------------

void ofApp::keyPressed(int key){

}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
