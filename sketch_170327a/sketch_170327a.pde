 float yPos,xPos;
 boolean playerY,playerX,blocky,blockY;
 int state;


Player playerOne;
Block block, blockTwo, blockThree,blockFour,blockFive;
StartScreen StartScreen;

void setup(){
  size(1000,300);
  StartScreen = new StartScreen();
  playerOne = new Player();
  block = new Block();

  //blockTwo = new Block();
  //blockThree = new Block();
  //blockFour = new Block();
  //playerX = false;
  state = 0;
  
  
}

void draw(){
  background(0);
  playerOne.move();  
  block.displayBlockX();
    playerOne.collisionDetection(block);
    block.displayCounter();
    //block.increaseSpeed();
  //blockTwo.displayBlockX();
  //blockThree.displayBlockX();
  //blockFour.displayBlockX();
  //block.displayBlockY();
  playerOne.display();
}

void keyPressed() {

 playerOne.handleKeyPressed();
 if (key == ' ') {
  playerOne.jump(); 
 }
  }
  


void collisionDetection(){

    
  
}