class Player {
  //data
  float xPos, yPos, pColor, dx, dy;
  float xSpeed, ySpeed;
  float playerWidth, playerHeight;
  float jumpHeight;
  float downForce = 2;
  float xAcceleration, yAcceleration;
  float gravity;
  int state;



  //constructor
  Player() {
    playerWidth = 20;
    playerHeight = 20;
    xSpeed = 3;
    ySpeed = 3;
    pColor = (160);
    xPos = width/2;
    yPos = height-playerHeight/2;
    dx = 0;
    dy = 0;
    xAcceleration = 0;
    yAcceleration = 0;
    jumpHeight = 0.1;
    gravity = 0.06;
    state = 0;
    //x = 40;
    //y = height-20/2;
    //h = 20;
    //w = 20;
  }



  //behaviour  
  void display() {
    noStroke();
    fill(pColor);
    ellipse(xPos, yPos, playerWidth, playerHeight);
  }  
  void move() {
    dy += yAcceleration;                               //acceleration changes the velocity
    yPos += dy;                                        //velocity changes the location  
    dy += gravity;
    yPos = constrain(yPos, 0, height-playerHeight/2);  //stay on screen 
    if (yPos == height-playerHeight/2) {               // if at bottom of screen
      dy = 0;
    }
    yAcceleration = 0;
  }


  void handleKeyPressed() {

    //if (key == 'd' && key == ' ') {
    //  xPos = xPos + xSpeed;
    //  jump();
    //}
  }
  void jump() {
    if (yPos == 290) {
      yAcceleration = -2;
    } else { 
      yAcceleration = 0;
    }
  }



  void collisionDetection(Block block) {
   //rect(someBlock.x, someBlock.y, someBlock.w, someBlock.h); 
   //println(x, y);
   //someBlock.x = someBlock.x - someBlock.speed;
   
   if (circleRect(xPos,yPos,playerWidth/2,block.x,block.y,block.w,block.h) ==true){
      block.speed = 0;
      gameOver();
    state = 1;
     
   }
  }
  

  // the following is from: http://www.jeffreythompson.org/collision-detection/circle-rect.php
  // I used it to save my brain from math.
  // CIRCLE/RECTANGLE
  boolean circleRect(float cx, float cy, float radius, float rx, float ry, float rw, float rh) {

    // temporary variables to set edges for testing
    float testX = cx;
    float testY = cy;

    // which edge is closest?
    if (cx < rx)         testX = rx;      // test left edge
    else if (cx > rx+rw) testX = rx+rw;   // right edge
    if (cy < ry)         testY = ry;      // top edge
    else if (cy > ry+rh) testY = ry+rh;   // bottom edge

    // get distance from closest edges
    float distX = cx-testX;
    float distY = cy-testY;
    float distance = sqrt( (distX*distX) + (distY*distY) );

    // if the distance is less than the radius, collision!
    if (distance <= radius) {
      return true;
    }
    return false;
  }
   
  void gameOver(){
    if (state == 1){
    pColor = 0;
    fill(255);
    text("GAME OVER",width/2,40);
    text("EXIT GAME TO RESTART",width/2,60);

    }
  }
  
    
    
    
  }
  
  
  
  
  