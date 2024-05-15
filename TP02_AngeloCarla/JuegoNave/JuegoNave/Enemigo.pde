class Enemigo extends GameObject implements IDisplayable, IMoveable {
  private float velocidad;

  public Enemigo() {
    super(new PVector(random(width), - 100));
    this.imagen = loadImage("OVNI.png");
  }

  public Enemigo(PVector posicion, float velocidad) {
    super(posicion);
    this.velocidad = velocidad;
    dibujar();
  }

  @Override
    public void display() {
    image(this.imagen, this.posicion.x, this.posicion.y, 90, 90);
  }

  public void dibujar() {
    this.imagen = loadImage("OVNI.png");
  }

  @Override
    void mover() {
    if (this.posicion.y<=height) {
      this.posicion.y+=this.velocidad;
    } else {
      this.posicion.y=0;
    }
  }

  public PVector getPosicion() {
    return this.posicion;
  }

  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }

  public float getVelocidad() {
    return this.velocidad;
  }

  public void setVelocidad(float velocidad) {
    this.velocidad=velocidad;
  }
}
