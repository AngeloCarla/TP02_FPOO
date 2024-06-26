class Shooter extends GameObject {
  private PVector velocidad;
  private int vida;

  public Shooter() {
    super(new PVector(0, 0));
    velocidad = new PVector(10, 10);
    vida = 3;
  }

  public Shooter(PVector posicion) {
    super(posicion);
    velocidad = new PVector(10, 10);
    vida = 3;
    dibujar();
  }

  @Override
    public void display() {
    image(this.imagen, this.posicion.x, this.posicion.y, 90, 90);
  }

  public void dibujar() {
    this.imagen = loadImage("shooter.png");
  }

  @Override
    public void mover(int direccion) {
    switch(direccion) {
    case 1:
      if (posicion.y - velocidad.y >= -10) {
        this.posicion.y -= this.velocidad.y;
      }
      break;
    case 2:
      if (posicion.y + velocidad.y <= height - 70) {
        this.posicion.y += this.velocidad.y;
      }
      break;
    case 3:
      if (posicion.x - velocidad.x >= -35) {
        this.posicion.x -= this.velocidad.x;
      }
      break;
    case 4:
      if (posicion.x + velocidad.x <= width - 60) {
        this.posicion.x += this.velocidad.x;
      }
      break;
    }
  }

  public void actualizarVidas() {
    vida--;
    if (vida <= 0) {
      println("Has perdido todas las vidas");
    }
  }

  public int getVida() {
    return vida;
  }

  public void setVida(int vida) {
    this.vida = vida;
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
