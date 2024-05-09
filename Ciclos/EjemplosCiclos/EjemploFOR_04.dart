import 'dart:io';

void main(List<String> args) {
  /*
  desarrolla run algoritmo dado como dato 10 numeros enteros, obtenga la suma de los 10 numeros enteros. se mostrara la suma de dichos numeros
  */
  int num;
  int suma = 0;
  for (int i = 0; i < 10; i++){
    print("digite el nuemro");
    num = int.parse(stdin.readLineSync()!);
    suma += num;
  }
  print("el resultado es: $suma");
}