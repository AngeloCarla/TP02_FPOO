class Vehiculo extends GameObject{
  private PVector velocidad;
  
 public Vehiculo(){
  super(new PVector(0,0));
  }
  
  public Vehiculo(PVector posicion){
   super(posicion);
   this.velocidad = new PVector(5,0);
   }
  
 public void display(){
  println("vehiculo");
  fill(255, 0, 0); 
  ellipse(this.posicion.x, this.posicion.y, 20, 20);
  }
  
 public void mover(int direccion){
   switch(direccion){
    case 1:
    if (posicion.x + velocidad.x <= width) {
     this.posicion.x += this.velocidad.x;
    break;
   /*case 2:
    if (posicion.x - velocidad.x >= 0) {
     this.posicion.x -= this.velocidad.x;
     }
    break;*/
    }
  }
}
}
