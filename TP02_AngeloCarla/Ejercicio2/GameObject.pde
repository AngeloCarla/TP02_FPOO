abstract class GameObject{
 protected int x, y;

 public GameObject(int x, int y){
  this.x = x;
  this.y = y;
  }

 abstract void display();
}
