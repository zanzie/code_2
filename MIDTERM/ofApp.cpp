#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofSetBackgroundAuto(false);
    xPos = ofGetWidth()/2;
    yPos = ofGetHeight()/2;
}

//--------------------------------------------------------------
void ofApp::update(){
   ofSetFrameRate((ofRandom(14,40)));
    
    xPos = xPos *.99 + ofGetMouseX() *(.01);
    yPos = yPos *.99 + ofGetMouseY() *(.01);
    
    
}

//--------------------------------------------------------------
void ofApp::draw(){
    

    
    
    dude.setup(xPos - 7, yPos - 7, ofRandom(-20,20), ofRandom(-20,20), ofRandom(8,40), 10, 500, 10, -PI/2, ofColor(ofRandom(255), ofRandom(255),ofRandom(255),ofRandom(100)));

    ofSetColor(255,ofRandom(200));
    ofDrawCircle(xPos+ofRandom(-5,5),yPos+ofRandom(-5,5),14);
    ofSetColor(0);
    ofDrawCircle(xPos+ofRandom(-5,5),yPos+ofRandom(-5,5),5);
    
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){

}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){
//dude.setup(x, y, ofRandom(-5,5), ofRandom(-5,5), 30, 100, 500, 100, -PI/2, ofColor(ofRandom(255), ofRandom(255),ofRandom(255),ofRandom(100)));
}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){
//    
//    dude.setup(xPos - 7, yPos - 7, ofRandom(-20,20), ofRandom(-20,20), ofRandom(8,40), 10, 500, 10, -PI/2, ofColor(ofRandom(255), ofRandom(255),ofRandom(255),ofRandom(100)));
//    
//    ofSetColor(255,ofRandom(200));
//    ofDrawCircle(xPos+ofRandom(-5,5),yPos+ofRandom(-5,5),14);
//    ofSetColor(0);
//    ofDrawCircle(xPos+ofRandom(-5,5),yPos+ofRandom(-5,5),5);

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
