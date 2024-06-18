import 'dart:io';

void main(List<String> args) {
  List<int> vectorX = [];
  int numBuscar, CantElementos = 5, num;
  int posicion = -1;
  bool encontrado = false;

  //CICLO PARA LLENAR EL VECTOR
  for (int i = 0; i < CantElementos; i++) {
    print("ingrse el nuemro #${i + 1}");
    num = int.parse(stdin.readLineSync()!);
    vectorX.add(num);
  }
  print("ingrse el nuemro para buscar en el vector");
  numBuscar = int.parse(stdin.readLineSync()!);

  //CICLO PARA BUSCAR EL ELEMENTO
  for (int i = 0; i < vectorX.length; i++) {
    if (numBuscar == vectorX[1]) {
      posicion = i;
      encontrado = true;
      break;
    }
  }

  //VALIDACION DE LA POSICION
  if (encontrado == true) {
    print("el numero se encuentra en la posicion $posicion");
  } else {
    print("el numero no se encuentra");
  }
}
