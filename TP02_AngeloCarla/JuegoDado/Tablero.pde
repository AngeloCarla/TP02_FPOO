class Tablero {

  public Tablero() {
  }

  public String obtenerNombreNumero(int numero) {
    switch(numero) {
    case 1:
      return "Uno";
    case 2:
      return "Dos";
    case 3:
      return "Tres";
    case 4:
      return "Cuatro";
    case 5:
      return "Cinco";
    case 6:
      return "Seis";
    default:
      return "";
    }
  }
}
