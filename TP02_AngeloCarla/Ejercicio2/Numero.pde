class Numero extends GameObject{
 int numero = 0;
 int[] resultados = new int[100];
 int indice = 0;
 
 public Numero(int x, int y){
  super(x, y);
  }
 
 void display(){
  dibujarPuntos(); 
  }
  
 void actualizarNumero(int resultado){
  if (indice < resultados.length){
   resultados[indice] = resultado; 
   numero = resultado;
   indice++; 
   }
  }
  
 void dibujarPuntos(){
  textSize(30);
  fill(0);
  noStroke();
  ellipseMode(CENTER);
   
  switch(numero){
   case 1:
    text("Uno",200,50);
    ellipse(x+50, y+50, 10, 10);
    break;
   case 2:
    text("Dos",200,50);
    ellipse(x+25,y+25,10,10);
    ellipse(x+75,y+75,10,10);
    break;
   case 3:
    text("Tres",200,50);
    ellipse(x+25,y+25,10,10);
    ellipse(x+75,y+75,10,10);
    ellipse(x+50,y+50,10,10);
    break;
    case 4:
    text("Cuatro",200,50);
    ellipse(x+25,y+25,10,10);
    ellipse(x+75,y+75,10,10);
    ellipse(x+25,y+75,10,10);
    ellipse(x+75,y+25,10,10);
    break;
   case 5:
    text("Cinco",200,50);
    ellipse(x+25,y+25,10,10);
    ellipse(x+75,y+75,10,10);
    ellipse(x+25,y+75,10,10);
    ellipse(x+75,y+25,10,10);
    ellipse(x+50,y+50,10,10);
    break;
   case 6:
    text("Seis",200,50);
    ellipse(x+25,y+25,10,10);
    ellipse(x+75,y+75,10,10);
    ellipse(x+25,y+75,10,10);
    ellipse(x+75,y+25,10,10);
    ellipse(x+25,y+50,10,10);
    ellipse(x+75,y+50,10,10);
    break;
    }
  } 
}
