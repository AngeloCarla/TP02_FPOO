class SpawnerVehiculo {
  private Vehiculo[] vehiculos;

  public SpawnerVehiculo() {
    vehiculos = new Vehiculo[400];
  }

  public void generarVehiculos() {
    for (int i = 0; i < 100; i++) {
      PVector posicion = new PVector(200 * i, 420);
      PVector velocidad = new PVector(2, 0);
      PImage img = loadImage("auto.png");
      Vehiculo vehiculo = new Vehiculo(posicion, velocidad, img);
      vehiculos[i] = vehiculo;
    }

   for (int i = 0; i < 100; i++) {
      PVector posicion = new PVector(300 * (i - 100), 500);
      PVector velocidad = new PVector(3, 0);
      PImage img = loadImage("auto1.png");
      Vehiculo vehiculo = new Vehiculo(posicion, velocidad, img);
      vehiculos[i + 100] = vehiculo;
    }
  }

  public void visualizarVehiculos() {
    for (Vehiculo vehiculo : vehiculos) {
      if (vehiculo != null) {
        vehiculo.display();
      }
    }
  }

  public void mover(int width) {
    for (Vehiculo vehiculo : vehiculos) {
      if (vehiculo != null) {
        vehiculo.mover();
        
        if (vehiculo.getPosicion().x > width) {
          vehiculo.setPosicion(new PVector(0, vehiculo.getPosicion().y));
        }
      }
    }
  }
}
