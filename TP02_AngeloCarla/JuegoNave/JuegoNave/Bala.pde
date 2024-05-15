class Bala extends GameObject {
  private float velocidad;

  public Bala() {
  }

  public Bala (PVector posicion) {
    super(posicion);
    this.velocidad = 3;
  }

  public void display() {
    fill(#A6B7D3);
    ellipse(posicion.x, posicion.y, 10, 10);
  }

  public void mover() {
    this.posicion.y-= this.velocidad;
  }
}
