class HUD {
  private int cantVida;

  public void mostrarVida(int vida) {
    this.cantVida = vida;
    fill(255);
    textAlign(CENTER);
    textSize(20);
    text("Vidas: " + cantVida, width/2, 20);
  }
}
