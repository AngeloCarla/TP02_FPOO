class Asteroide extends GameObject {
  private PVector posicion;
  private PVector velocidad;
  private PImage asteroide;

  public Asteroide() {
  }

  @Override
    void display() {
  }

  @Override
    void mover(int direccion) {
  }

  public PVector getPosicion() {
    return this.posicion;
  }

  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }

  public PVector getVelocidad() {
    return this.velocidad;
  }

  public void setVelocidad(PVector velocidad) {
    this.velocidad=velocidad;
  }
}
