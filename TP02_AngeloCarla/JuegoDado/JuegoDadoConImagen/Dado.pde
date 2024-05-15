class Dado extends GameObject {
  private PImage uno;
  private PImage dos;
  private PImage tres;
  private PImage cuatro;
  private PImage cinco;
  private PImage seis;
  private PImage dado;
  private int numero = 0;

  public Dado() {
    super(new PVector(100, 100));
    this.uno = loadImage("uno.jpg");
    this.dos = loadImage("dos.jpg");
    this.tres = loadImage("tres.jpg");
    this.cuatro = loadImage("cuatro.jpg");
    this.cinco = loadImage("cinco.jpg");
    this.seis = loadImage("seis.jpg");
    this.dado = loadImage("dado.jpg");
  }

  void display() {
    dibujarDado();
    mostrarNumero();
  }

  void dibujarDado() {
    image(dado, this.posicion.x, this.posicion.y, 100, 100);
    switch(numero) {
    case 1:
      image(uno, this.posicion.x, this.posicion.y, 100, 100);
      break;
    case 2:
      image(dos, this.posicion.x, this.posicion.y, 100, 100);
      break;
    case 3:
      image(tres, this.posicion.x, this.posicion.y, 100, 100);
      break;
    case 4:
      image(cuatro, this.posicion.x, this.posicion.y, 100, 100);
      break;
    case 5:
      image(cinco, this.posicion.x, this.posicion.y, 100, 100);
      break;
    case 6:
      image(seis, this.posicion.x, this.posicion.y, 100, 100);
      break;
    }
  }

  void mostrarNumero() {
    String nombreNumero = tablero.obtenerNombreNumero(numero);
    textSize(20);
    fill(0);
    text(nombreNumero, 200, 60);
  }

  public void setNumero(int numero) {
    this.numero = numero;
  }
}
