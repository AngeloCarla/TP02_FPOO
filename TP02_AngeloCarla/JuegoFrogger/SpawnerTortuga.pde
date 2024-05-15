class SpawnerTortuga {
  private Tortuga[] tortugas;

  public SpawnerTortuga() {
    tortugas = new Tortuga[400];
  }

  public void generarTortugas() {
    for (int i = 0; i < 6; i++) {
      PVector posicion = new PVector(30 * i, 200);
      PVector velocidad = new PVector(1.5, 0);
      PImage img = loadImage("tortuga.png");
      Tortuga tortuga = new Tortuga(posicion, velocidad, img);
      tortugas[i] = tortuga;
    }

    for (int i = 0; i < 3; i++) {
      PVector posicion = new PVector(30 * (i - 10), 250);
      PVector velocidad = new PVector(3, 0);
      PImage img = loadImage("tortuga.png");
      Tortuga tortuga = new Tortuga(posicion, velocidad, img);
      tortugas[i + 10] = tortuga;
    }
  }

  public void visualizarTortugas() {
    for (Tortuga tortuga : tortugas) {
      if (tortuga != null) {
        tortuga.display();
      }
    }
  }

  public void mover(int width) {
    for (Tortuga tortuga : tortugas) {
      if (tortuga != null) {
        tortuga.mover();
        if (tortuga.getPosicion().x > width) {
          tortuga.setPosicion(new PVector(0, tortuga.getPosicion().y));
        }
      }
    }
  }
}
