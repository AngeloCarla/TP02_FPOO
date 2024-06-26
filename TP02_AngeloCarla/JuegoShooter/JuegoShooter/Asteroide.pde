class Asteroide extends GameObject {
  private PVector velocidad;


  public Asteroide() {
    super(new PVector(random(width), - 100));
    velocidad = new PVector(10, 10);
    this.imagen = loadImage("asteroide.png");
  }

  public Asteroide(PVector posicion) {
    super(posicion);
    velocidad = new PVector(random(5), random(5));
    dibujar();
  }

  @Override
    public void display() {
    image(this.imagen, this.posicion.x, this.posicion.y, 90, 90);
  }

  public void dibujar() {
    this.imagen = loadImage("asteroide.png");
  }

  @Override
    void mover(int direccion) {
    switch(direccion) {
    case 1:
      if (this.posicion.y<=height) {
        this.posicion.y+=this.velocidad.y;
      } else {
        this.posicion.y=0;
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
