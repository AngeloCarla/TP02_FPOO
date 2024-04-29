class Numero extends GameObject{
 int num = 0;
 int[] resultados = new int[100];
 
 public Numero(int x, int y){
  super(x, y);
  }
 
 void display(){
  dibujarPuntos(); 
  }
  
 void dibujarPuntos(){
  println(num);
  textSize(30);
  fill(0);
  noStroke();
  ellipseMode(CENTER);
   
  switch(num){
   case 1:
    text("Uno",200,50);
    ellipse(x+150, y+150, 10, 10);
    break;
   case 2:
    text("Dos",200,50);
    ellipse(x+125,y+125,10,10);
    ellipse(x+175,y+175,10,10);
    break;
   case 3:
    text("Tres",200,50);
    ellipse(x+125,y+125,10,10);
    ellipse(x+175,y+175,10,10);
    ellipse(x+150,y+150,10,10);
    break;
    case 4:
    text("Cuatro",200,50);
    ellipse(x+125,y+125,10,10);
    ellipse(x+175,y+175,10,10);
    ellipse(x+125,y+175,10,10);
    ellipse(x+175,y+125,10,10);
    break;
   case 5:
    text("Cinco",200,50);
    ellipse(x+125,y+125,10,10);
    ellipse(x+175,y+175,10,10);
    ellipse(x+125,y+175,10,10);
    ellipse(x+175,y+125,10,10);
    ellipse(x+150,y+150,10,10);
    break;
   case 6:
    text("Seis",200,50);
    ellipse(x+125,y+125,10,10);
    ellipse(x+175,y+175,10,10);
    ellipse(x+125,y+175,10,10);
    ellipse(x+175,y+125,10,10);
    ellipse(x+125,y+150,10,10);
    ellipse(x+175,y+150,10,10);
    break;
    }
  } 
}
