 private Dado dado;
 private Numero num;
 
 public void setup(){
  size(300,300);
  noLoop();
  dado = new Dado(100,100);
  num = new Numero(0,0);
  }
 
 void draw(){
  background(#1E9527);
  dado.display();
  num.display();
  }
  
 void keyPressed() {
  num.num = (int) random(1, 7);
  redraw();
  }
