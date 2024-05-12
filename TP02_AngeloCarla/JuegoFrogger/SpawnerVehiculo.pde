class SpawnerVehiculo extends GameObject {
  private Vehiculo[] vehiculos;

  public SpawnerVehiculo(int cantVe) {
    vehiculos = new Vehiculo[cantVe];
  }

public void generarVehiculo() {
    int filas = 4;
    int columnas = 5;
    float espacioEntreColumnas = width / (columnas + 1); 
    float espacioEntreFilas = height / (filas + 1);  
    for (int i = 0; i < vehiculos.length; i++) {
        int fila = i / columnas;  
        float posY = (fila % 2 + 1) * espacioEntreFilas;  
        float posX = (i % columnas + 1) * espacioEntreColumnas;  
        vehiculos[i] = new Vehiculo(new PVector(posX, posY), new PVector(5, 0));
    }
}




  public void display() {
    for (Vehiculo v : vehiculos) {
      if (v != null) {
        v.dibujar();
      }
    }
  }

  public Vehiculo[] getVehiculos() {
    return vehiculos;
  }
}
