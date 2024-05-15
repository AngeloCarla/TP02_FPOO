abstract class GameObject implements IDisplayable, IMoveable {
  protected PVector posicion;
  protected PImage imagen;

  public GameObject() {
  }

  public GameObject(PVector posicion) {
    this.posicion = posicion;
  }

  public abstract void display();
  public abstract void mover();
}
