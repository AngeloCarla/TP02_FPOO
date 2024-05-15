class Frog extends GameObject {
  private PVector velocidad;
  private PImage rana;

  public Frog() {
    super(new PVector(0, 0));
  }

  public Frog(PVector posicion) {
    super(posicion);
    velocidad = new PVector(10, 10);
    dibujar();
  }

  public void dibujar() {
    rana = loadImage("rana.png");
    rana.resize(30, 0);
  }

  public void display() {
    image(rana, this.posicion.x, this.posicion.y);
  }

  public void mover(int direccion) {
    switch(direccion) {
    case 1:
      if (posicion.y - velocidad.y >= 0) {
        this.posicion.y -= this.velocidad.y;
      }
      break;
    case 2:
      if (posicion.y + velocidad.y <= height - 20) {
        this.posicion.y += this.velocidad.y;
      }
      break;
    case 3:
      if (posicion.x - velocidad.x >= 0) {
        this.posicion.x -= this.velocidad.x;
      }
      break;
    case 4:
      if (posicion.x + velocidad.x <= width - 25) {
        this.posicion.x += this.velocidad.x;
      }
      break;
    }
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
