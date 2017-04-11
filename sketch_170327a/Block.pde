class Block{
 //data
 float h,w;
 float randomPointX = random(500);
 float randomPointY = random(-40,-80);
 float x,y,speed;
 int counter;
 
 
 //constructor
 Block(){
 x = width+randomPointX;
 y = height-40/2;
 h = 20;
 w = 20;  
 speed = 5;
 counter = 0;
 }
 
 
 //behaviour
  void displayBlockX(){
   rect(x,y,w,h); 
           //println(x,y);
   x = x - speed;
   if (x <= 0-20){
    x = width+randomPointX; 
    counter = counter + 1;
    speed = speed + 1;
   }
   //if (x <= 510){
   // speed = 0; 
   //}
  }
  void displayCounter(){
   if (speed >= 1){
   fill(255);
   text(counter,width/2,height/2); 
   }
    else{
     if (speed == 0)
       fill(0);
       text(counter,width/2,height/2); 
     
    }
  }
  //void increaseSpeed(){
  // if (counter >= 5){
  //  speed = 7;     
  // }

  //}
  
  
  
}