class Escenario {
  private PVector suelo;
  private PVector cesped;
  private PImage imgSuelo;
  private PImage imgCesped;

  public Escenario(PVector posSuelo, PVector posCesped) {
    this.suelo = posSuelo;
    this.cesped = posCesped;
    dibujar();
  }

  public void dibujar() {
    imgSuelo = loadImage("suelo.png");
    imgSuelo.resize(50, 0);
    imgCesped = loadImage("cesped.png");
    imgCesped.resize(150, 0);
  }

  public void display() {
    float x1 = suelo.x;
    float xCesped = cesped.x;

    while (x1 < width || xCesped < width) {
      if (x1 < width) {
        image(imgSuelo, x1, suelo.y);
        x1 += imgSuelo.width;
      }

      if (xCesped < width) {
        image(imgCesped, xCesped, cesped.y);
        xCesped += imgCesped.width;
      }
    }
  }

  public PVector getSuelo() {
    return this.suelo;
  }

  public void setSuelo(PVector suelo) {
    this.suelo = suelo;
  }

  public PVector getCesped() {
    return this.cesped;
  }

  public void setCesped(PVector cesped) {
    this.cesped = cesped;
  }
}
