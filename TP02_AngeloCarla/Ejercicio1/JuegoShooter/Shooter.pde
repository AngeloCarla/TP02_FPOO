class Shooter extends GameObject{
 private PImage nave;
 private int vida;
 
 public void display(){
 }
 
 public void mover(int direccion){
  switch(direccion){
   case 1:
    if (posicion.y - velocidad.y >= 0) {
     this.posicion.y -= this.velocidad.y;
     }
    break;
   case 2:
    if (posicion.y + velocidad.y <= height) {
     this.posicion.y += this.velocidad.y;
     }
    break;
   case 3:
    if (posicion.x - velocidad.x >= 0) {
     this.posicion.x -= this.velocidad.x;
     }
    break;
   case 4:
    if (posicion.x + velocidad.x <= width) {
     this.posicion.x += this.velocidad.x;
     }
    break;
   }
  }
 
 public void actualizarVidas(){
 }
 
 public PVector getPosicion(){
  return this.posicion;
  }
  
 public void setPosicion(PVector posicion){
  this.posicion = posicion;
  }
  
 public PVector getVelocidad(){
  return this.velocidad;
  }
  
 public void setVelocidad(PVector velocidad){
  this.velocidad=velocidad;
  }
 
}
