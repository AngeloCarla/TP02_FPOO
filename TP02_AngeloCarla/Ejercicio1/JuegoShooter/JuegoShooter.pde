private Shooter shooter;
private Asteroide asteroide;
private JoyPad joypad;

public void setup() {
  size(500, 500);
  shooter = new Shooter(new PVector(width/2, height));
  asteroide = new Asteroide();
  joypad = new JoyPad();
}

public void draw() {
  background(255,240,251);
  shooter.display();

  if (joypad.IsUp()) {
    shooter.mover(1);
  }
  if (joypad.IsDown()) {
    shooter.mover(2);
  }
  if (joypad.IsLeft()) {
    shooter.mover(3);
  }
  if (joypad.IsRight()) {
    shooter.mover(4);
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
