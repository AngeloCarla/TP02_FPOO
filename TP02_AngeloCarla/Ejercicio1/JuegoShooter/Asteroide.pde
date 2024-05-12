class Asteroide extends GameObject {

  public Asteroide() {
  }
  
  void display() {
  }
  
  void mover(){
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
