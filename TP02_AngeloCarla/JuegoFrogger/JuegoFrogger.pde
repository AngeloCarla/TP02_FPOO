private Frog rana;
private JoyPad joypad;
private SpawnerVehiculo spawn;

public void setup() {
  size(500, 500);
  rana = new Frog(new PVector(width/2, height));
  joypad = new JoyPad();
  spawn = new SpawnerVehiculo(10);
  spawn.generarVehiculo();
}

public void draw() {
  background(103, 216, 107);
  rana.display();

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
