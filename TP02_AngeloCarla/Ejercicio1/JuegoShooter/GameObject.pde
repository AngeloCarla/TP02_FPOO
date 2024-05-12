abstract class GameObject {
  protected PVector posicion;
  protected PImage imagen;

  public GameObject(PVector posicion) {
    this.posicion = posicion;
    this.imagen = imagen;
  }

  abstract void display();
}
