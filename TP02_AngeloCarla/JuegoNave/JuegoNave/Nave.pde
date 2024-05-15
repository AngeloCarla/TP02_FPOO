class Nave extends GameObject implements IDisplayable, IControler, IMoveable {
  private int direccion;
  private PVector velocidad;

  public Nave() {
    super(new PVector(0, 0));
    velocidad = new PVector(10, 10);
  }

  public Nave(PVector posicion, PVector velocidad) {
    super(posicion);
    this.velocidad = velocidad;
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
    public void mover() {
    switch (direccion) {
    case 1:
      if (posicion.y - velocidad.y >= -10) {
        posicion.y -= velocidad.y;
      }
      break;
    case 2:
      if (posicion.y + velocidad.y <= height - 70) {
        posicion.y += velocidad.y;
      }
      break;
    case 3:
      if (posicion.x - velocidad.x >= -35) {
        posicion.x -= velocidad.x;
      }
      break;
    case 4:
      if (posicion.x + velocidad.x <= width - 60) {
        posicion.x += velocidad.x;
      }
      break;
    }
  }

  public void dispararBalas() {
    PVector posNewBala = new PVector(this.posicion.x + 40, this.posicion.y);
    for (int i = 0; i < 9; i++) {
      bala[i] = new Bala(posNewBala);
    }
  }

  public void readCommand() {
    if (joypad.IsUp()) {
      direccion = 1;
    }
    if (joypad.IsDown()) {
      direccion = 2;
    }
    if (joypad.IsLeft()) {
      direccion = 3;
    }
    if (joypad.IsRight()) {
      direccion = 4;
    }
  }

  public void setDirection(int direction) {
    this.direccion = direction;
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
    this.velocidad = velocidad;
  }
}
