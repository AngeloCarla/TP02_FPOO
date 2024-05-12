class Vehiculo {
  private PVector velocidad;
  private PVector posicion;

  public Vehiculo() {
    this.posicion = new PVector(0, 0);
    this.velocidad = new PVector(5, 0);
  }

  public Vehiculo(PVector posicion, PVector velocidad) {
    this.posicion = posicion;
    this.velocidad = velocidad;
  }

  public void dibujar() {
    fill(255, 0, 0);
    ellipse(this.posicion.x, this.posicion.y, 20, 20);
  }

  public void mover() {
    this.posicion.x += this.velocidad.x;
    if (fueraDePantalla()) {
      this.posicion.x = 0;
      spawn.generarVehiculo();
    }
  }

  public boolean fueraDePantalla() {
    return this.posicion.x > width;
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
