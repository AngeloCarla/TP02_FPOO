private Nave nave;
private JoyPad joypad;
private Asteroide[] asteroide;
private Enemigo[] alien;
private Bala[] bala;

public void setup() {
  size(500, 500);
  nave = new Nave(new PVector(width/2 - 40, height - 70), new PVector(10, 10));
  asteroide = new Asteroide[5];
  joypad = new JoyPad();
  for (int i= 0; i < 4; i++) {
    asteroide[i] = new Asteroide(new PVector(random(width), 0), random(2, 3));
  }
  alien = new Enemigo[6];
  for (int i= 0; i < 5; i++) {
    alien[i] = new Enemigo(new PVector(random(width), 0), random(2, 3));
  }
  bala = new Bala[10];
}


public void draw() {
  background(0);
  for (int i= 0; i < 4; i++) {
    asteroide[i].display();
    asteroide[i].mover();
  }
  for (int i= 0; i < 5; i++) {
    alien[i].display();
    alien[i].mover();
  }

  for (int i= 0; i < bala.length; i++) {
    if (bala[i] != null) {
      bala[i].display();
      bala[i].mover();
    }
  }

  nave.display();
  nave.mover();
  nave.readCommand();
  int direction = joypad.getDirection();
  nave.setDirection(direction);
}

public void keyPressed() {
  if (key=='e'||key=='E') {
    nave.dispararBalas();
  }

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
