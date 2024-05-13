abstract class GameObject {
  protected PVector posicion;
  protected PImage imagen;

  public GameObject() {
  }

  public GameObject(PVector posicion) {
    this.posicion = posicion;
    this.imagen = imagen;
  }

  abstract void display();
  public abstract void mover(int direccion);

  public PImage getImagen() {
    return this.imagen;
  }

  public void setImagen(PImage imagen) {
    this.imagen = imagen;
  }
}
