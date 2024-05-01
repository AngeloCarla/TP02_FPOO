abstract class GameObject{
 protected PVector posicion;
 protected PVector velocidad;
 
 public GameObject(){
  posicion = new PVector();
  velocidad = new PVector();
  }
 
 abstract void display();
}
