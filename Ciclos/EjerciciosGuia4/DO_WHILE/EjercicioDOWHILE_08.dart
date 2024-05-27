import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - DOWHILE 08

  /*
  Hacer un programa que lea caracteres desde teclado y vaya contando las vocales que aparecen. El programa  terminará  cuando  lea  el  carácter  #  y  entonces  mostrará  un  mensaje  indicando  cuántas vocales ha leído (cuántas de cada una de ellas).
  */

  //DECLARACION DE VARIABLES
  int cont_A = 0,
      cont_E = 0,
      cont_I = 0,
      cont_O = 0,
      cont_U = 0,
      cont_Vocales = 0;
  String? letra;
  //PROCESO
  do {
    print("Ingrese la letra:");
    letra = stdin.readLineSync();
    letra = letra!.toLowerCase();
    if (letra != "a" &&
        letra != "e" &&
        letra != "i" &&
        letra != "o" &&
        letra != "u") {
      print("la letra no es una vocal");
    } else {
      cont_Vocales++;
      if (letra == "a") {
        cont_A++;
      } else if (letra == "e") {
        cont_E++;
      } else if (letra == "i") {
        cont_I++;
      } else if (letra == "o") {
        cont_O++;
      } else {
        cont_U++;
      }
    }
  } while (letra != "#");

  print("cantidad de vocales:$cont_Vocales");
  print("cantidad de A:$cont_A");
  print("cantidad de E:$cont_E");
  print("cantidad de I:$cont_I");
  print("cantidad de O: $cont_O");
  print("cantidad de U: $cont_U");
}
