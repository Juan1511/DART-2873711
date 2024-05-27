void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - DOWHILE 05

  /*
  Calcular la suma siguiente:100 + 98 + 96 + 94 + . . . + 0 en este orden
  */

  //DECLARACION DE VARIABLES
  int suma = 0, contador = 0;

  //PROCESO
  do {
    contador++;
    suma += contador;
  } while (contador != 100);
  print("el resultado es $suma");
}
