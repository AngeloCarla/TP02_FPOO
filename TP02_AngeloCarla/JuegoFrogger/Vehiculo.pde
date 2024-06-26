class Vehiculo extends GameObject {
  private PVector posicion;
  private PVector velocidad;
  private PImage vehiculo;

  public Vehiculo(PVector posicion, PVector velocidad, PImage vehiculo) {
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.vehiculo = vehiculo;
  }

  public void display() {
    image(vehiculo, posicion.x, posicion.y);
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
