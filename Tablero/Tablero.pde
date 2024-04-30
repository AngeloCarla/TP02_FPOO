 private Dado dado;
 private Numero num;
 
 public void setup(){
  size(300,300);
  noLoop();
  dado = new Dado(100,100);
  num = new Numero(100,100);
  println("ENTER para girar los Dados");
  println("TAB para ver resultados");
  }
 
 void draw(){
  background(#1E9527);
  dado.display();
  num.display();
  }
  
 void keyReleased(){
  if(key == ENTER){
   int re = (int) random(1, 7);
   num.actualizarNumero(re);
   redraw();
   }
  
  if(key == TAB){  
   println("Los resultados son:");
   for(int i = 0; i < num.indice; i++){
    if (i % 4 == 0 && i != 0) {
     println();
     }
     print(num.resultados[i] + " ");
     }
     println();     
     }
  } 
