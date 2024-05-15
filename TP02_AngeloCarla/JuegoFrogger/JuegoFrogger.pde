private Frog rana;
private JoyPad joypad;
private SpawnerVehiculo spawnVehiculos;
private SpawnerTortuga spawnTortugas;
private Escenario escenario;

public void setup() {
  size(600, 600);
  rana = new Frog(new PVector(width/2, height - 20));
  joypad = new JoyPad();
  spawnVehiculos = new SpawnerVehiculo();
  spawnVehiculos.generarVehiculos();
  spawnTortugas = new SpawnerTortuga();
  spawnTortugas.generarTortugas();
  escenario = new Escenario(new PVector(0, 300), new PVector(0, 0));
}

public void draw() {
  background(0);
  escenario.display();
  rana.display();
  spawnVehiculos.visualizarVehiculos();
  spawnVehiculos.mover(width);
  spawnTortugas.visualizarTortugas();
  spawnTortugas.mover(width);
  
  if (joypad.IsUp()) {
    rana.mover(1);
  }
  if (joypad.IsDown()) {
    rana.mover(2);
  }
  if (joypad.IsLeft()) {
    rana.mover(3);
  }
  if (joypad.IsRight()) {
    rana.mover(4);
  }
}

public void keyPressed() {
  if (key=='w'||key=='W'||keyCode==UP) {
    joypad.setUp(true);
  }

  if (key=='s'||key=='S'||keyCode==DOWN) {
    joypad.setDown(true);
  }

  if (key=='a'||key=='A'||keyCode==LEFT) {
    joypad.setLeft(true);
  }

  if (key=='d'||key=='D'||keyCode==RIGHT) {
    joypad.setRight(true);
  }
}

public void keyReleased() {
  if (key=='w'||key=='W'||keyCode==UP) {
    joypad.setUp(false);
  }

  if (key=='s'||key=='S'||keyCode==DOWN) {
    joypad.setDown(false);
  }

  if (key=='a'||key=='A'||keyCode==LEFT) {
    joypad.setLeft(false);
  }

  if (key=='d'||key=='D'||keyCode==RIGHT) {
    joypad.setRight(false);
  }
}
