private Shooter shooter;
private JoyPad joypad;
private HUD hud;
private Asteroide[] asteroide;

public void setup() {
  size(500, 500);
  shooter = new Shooter(new PVector(width/2 - 40, height - 70));
  asteroide = new Asteroide[5];
  joypad = new JoyPad();
  hud = new HUD();
  for (int i= 0; i < 4; i++) {
    asteroide[i] = new Asteroide(new PVector(random(width), 0));
  }
}


public void draw() {
  background(114, 53, 147);
  shooter.display();
  hud.mostrarVida(shooter.getVida());

  for (int i= 0; i < 4; i++) {
    asteroide[i].display();
    asteroide[i].mover(1);
  }

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
