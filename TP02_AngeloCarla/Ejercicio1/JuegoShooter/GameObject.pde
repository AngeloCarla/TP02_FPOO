abstract class GameObject {
  protected PVector posicion;
  // protected PImage imagen;

  public GameObject() {
  }

  public GameObject(PVector posicion) {
    this.posicion = posicion;
  }

  abstract void display();
  public abstract void mover(int direccion);
}
