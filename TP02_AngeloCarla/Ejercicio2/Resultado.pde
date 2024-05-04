class Resultado{
 int[] resultados = new int[100];
 int indice = 0;
 
 public Resultado(){
  }
  
 void actualizarNumero(int resultado){
  if (indice < resultados.length){
   resultados[indice] = resultado; 
   dado.numero = resultado;
   indice++; 
   }
  }
}
