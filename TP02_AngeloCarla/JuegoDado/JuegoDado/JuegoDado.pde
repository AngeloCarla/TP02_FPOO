private Dado dado;
private Tablero tablero;
private int[] resultados;
private int indice = 0;

public void setup() {
  size(300, 300);
  noLoop();
  tablero = new Tablero();
  dado = new Dado();
  resultados = new int[100];
  println("ENTER para girar los Dados");
  println("TAB para ver resultados");
}

void draw() {
  background(41,169,227);
  dado.display();
}

void actualizarNumero(int resultado) {
  if (indice < resultados.length) {
    resultados[indice] = resultado;
    dado.setNumero(resultado);
    indice++;
  }
}

void keyReleased() {
  if (key == ENTER) {
    int num = (int) random(1, 7);
    actualizarNumero(num);
    redraw();
  }

  if (key == TAB) {
    println("Los resultados son:");
    for (int i = 0; i < indice; i++) {
      if (i % 4 == 0 && i != 0) {
        println();
      }
      print(resultados[i] + " ");
    }
    println();
  }
}
