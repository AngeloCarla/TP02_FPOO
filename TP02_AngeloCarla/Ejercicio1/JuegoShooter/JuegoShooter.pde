public void setup(){
}

public void draw(){
}

public void keyPressed(){
  if(key=='w'||key=='W'||keyCode==UP){
   joypad.setUp(true);
   }
   
  if(key=='s'||key=='S'||keyCode==DOWN){
   joypad.setDown(true);
   }
   
  if(key=='a'||key=='A'||keyCode==LEFT){
   joypad.setLeft(true);
   }
  
  if(key=='d'||key=='D'||keyCode==RIGHT){
   joypad.setRight(true);
   }
  }
 
 public void keyReleased(){
  if(key=='w'||key=='W'||keyCode==UP){
   joypad.setUp(false);
   }
  
  if(key=='s'||key=='S'||keyCode==DOWN){
   joypad.setDown(false);
   }
   
  if(key=='a'||key=='A'||keyCode==LEFT){
   joypad.setLeft(false);
   }
  
  if(key=='d'||key=='D'||keyCode==RIGHT){
   joypad.setRight(false);
   }
  }
