 private Resultado re;
 private Dado dado;
 
 public void setup(){
  size(300,300);
  noLoop();
  re = new Resultado();
  dado = new Dado(100,100);
  println("ENTER para girar los Dados");
  println("TAB para ver resultados");
  }
 
 void draw(){
  background(#1E9527);
  dado.display();
  }
  
 void keyReleased(){
  if(key == ENTER){
   int num = (int) random(1, 7);
   re.actualizarNumero(num);
   redraw();
   }
  
  if(key == TAB){  
   println("Los resultados son:");
   for(int i = 0; i < re.indice; i++){
    if (i % 4 == 0 && i != 0){
     println();
     }
     print(re.resultados[i] + " ");
     }
     println();     
     }
  } 
