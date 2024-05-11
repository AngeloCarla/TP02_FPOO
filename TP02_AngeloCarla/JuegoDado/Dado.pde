class Dado extends GameObject {
  private int numero = 0;

  public Dado() {
    super(new PVector(100, 100));
  }

  void display() {
    dibujarDado();
    mostrarNumero();
  }

  void dibujarDado() {
    //Dibuja el Dado
    fill(255);
    stroke(0);
    rect(this.posicion.x, this.posicion.y, 100, 100, 10);
    //Dibuja los Puntos del Dado
    fill(0);
    noStroke();
    ellipseMode(CENTER);

    switch(numero) {
    case 1:
      ellipse(this.posicion.x+50, this.posicion.y+50, 10, 10);
      break;
    case 2:
      ellipse(this.posicion.x+25, this.posicion.y+25, 10, 10);
      ellipse(this.posicion.x+75, this.posicion.y+75, 10, 10);
      break;
    case 3:
      ellipse(this.posicion.x+25, this.posicion.y+25, 10, 10);
      ellipse(this.posicion.x+75, this.posicion.y+75, 10, 10);
      ellipse(this.posicion.x+50, this.posicion.y+50, 10, 10);
      break;
    case 4:
      ellipse(this.posicion.x+25, this.posicion.y+25, 10, 10);
      ellipse(this.posicion.x+75, this.posicion.y+75, 10, 10);
      ellipse(this.posicion.x+25, this.posicion.y+75, 10, 10);
      ellipse(this.posicion.x+75, this.posicion.y+25, 10, 10);
      break;
    case 5:
      ellipse(this.posicion.x+25, this.posicion.y+25, 10, 10);
      ellipse(this.posicion.x+75, this.posicion.y+75, 10, 10);
      ellipse(this.posicion.x+25, this.posicion.y+75, 10, 10);
      ellipse(this.posicion.x+75, this.posicion.y+25, 10, 10);
      ellipse(this.posicion.x+50, this.posicion.y+50, 10, 10);
      break;
    case 6:
      ellipse(this.posicion.x+25, this.posicion.y+25, 10, 10);
      ellipse(this.posicion.x+75, this.posicion.y+75, 10, 10);
      ellipse(this.posicion.x+25, this.posicion.y+75, 10, 10);
      ellipse(this.posicion.x+75, this.posicion.y+25, 10, 10);
      ellipse(this.posicion.x+25, this.posicion.y+50, 10, 10);
      ellipse(this.posicion.x+75, this.posicion.y+50, 10, 10);
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
