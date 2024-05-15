class Tortuga extends GameObject{
  private PVector posicion;
  private PVector velocidad;
  private PImage tortuga;

  public Tortuga(PVector posicion, PVector velocidad, PImage tortuga) {
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.tortuga = tortuga;
  }

  public void display() {
    image(tortuga, posicion.x, posicion.y);
  }

  public void mover() {
    posicion.add(velocidad);
  }

  public PVector getPosicion() {
    return posicion;
  }

  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }

  public PVector getVelocidad() {
    return velocidad;
  }

  public void setVelocidad(PVector velocidad) {
    this.velocidad = velocidad;
  }
}
