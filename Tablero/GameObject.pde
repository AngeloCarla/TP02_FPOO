abstract class GameObject{
 protected int x, y;

// Constructor de GameObject
 GameObject(int x, int y){
  this.x = x;
  this.y = y;
  }

// Método abstracto que las subclases deben implementar
  abstract void display();
}
