class Dado extends GameObject{
  
 public Dado(int x, int y){
  super(x, y);
  }
  
 void display(){
  dibujarDado();
  }
  
 void dibujarDado(){
  fill(255);
  stroke(0);
  rect(x, y, 100, 100, 10);
  }
}
