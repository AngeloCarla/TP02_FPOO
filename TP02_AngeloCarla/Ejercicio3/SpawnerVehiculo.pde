class SpawnerVehiculo{
 private Vehiculo[] vehiculos;
 
 public SpawnerVehiculo(int cantVe){
  vehiculos = new Vehiculo[cantVe];
  }
 
 public void generarVehiculo() {
    for (int i = 0; i < vehiculos.length; i++) {
    vehiculos[i] = new Vehiculo();
    }
    println("Vehiculos generados");
}
 
 public void display() {
  for (Vehiculo v : vehiculos){
   if (v != null){
    v.display();
    }
  }
 }
 
 public Vehiculo[] getVehiculos() {
  return vehiculos;
  }
}
