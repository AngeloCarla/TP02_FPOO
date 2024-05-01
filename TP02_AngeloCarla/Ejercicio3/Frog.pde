class Frog extends GameObject{
 private PVector posicion;
 private PVector velocidad;

 public Frog(){
  }
  
 public Frog(int x, int y){
  posicion = new PVector(x,y);
  velocidad = new PVector(0,0);
  }
 
 public void display(){
  fill(0, 255, 0); 
  ellipse(this.posicion.x, this.posicion.y, 20, 20);
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
