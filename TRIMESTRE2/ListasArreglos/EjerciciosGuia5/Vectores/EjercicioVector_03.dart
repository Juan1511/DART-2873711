import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - VECTOR 03
  /*
  Almacenar  15  números  en  un  vector,  imprimir  cuantos  son  ceros,  cuántos  son  negativos,  cuantos positivos. Imprimir además la suma de los negativos, la suma de los ceros y la suma de los positivos.
  */
  List<double> numeros = [];

  int cantNumeros = 15;
  int cantCeros = 0, cantSuma = 0, cantResta = 0;
  double sumaCeros = 0, sumaSuma = 0, sumaResta = 0;
  double num;

  for (var i = 0; i < cantNumeros; i++) {
    print("ingresa los numeros para la lista #${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    numeros.add(num);

    if (numeros[i] == 0) {
      cantCeros++;
      sumaCeros += numeros[i];
    } else if (numeros[i] < 0) {
      cantResta++;
      sumaResta += numeros[i];
    } else {
      cantSuma++;
      sumaSuma += numeros[i];
    }
  }
  print("cantidad ceros $cantCeros");
  print("cantidad poaitivos $cantSuma");
  print("cantidad negativos $cantResta");
  print(numeros);
  print('*' * 50);
  print("la suma de los poaitivos es $sumaSuma");
  print("la resta de los negativos es $sumaResta");
  print("la suma de los ceros es $sumaCeros");
}
